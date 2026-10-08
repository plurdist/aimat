"""
Phrase profiles (AIM2-65): a few numbers that describe a whole MIDI phrase, so a
patch can use the phrase without playing it.

Reads Standard MIDI Files directly (no MIDI library needed).
"""
import statistics
from dataclasses import dataclass

CHORD_SIZE = 6


class MidiError(ValueError):
    """The file isn't a MIDI file this reader understands."""


@dataclass
class Note:
    start: float      # seconds
    end: float        # seconds
    pitch: int
    velocity: int

    @property
    def duration(self):
        return self.end - self.start


# ---------------------------------------------------------------------
# reading
# ---------------------------------------------------------------------
class _Reader:
    def __init__(self, data):
        self.data = data
        self.pos = 0

    def take(self, n):
        if self.pos + n > len(self.data):
            raise MidiError("the file ends too early")
        chunk = self.data[self.pos:self.pos + n]
        self.pos += n
        return chunk

    def byte(self):
        return self.take(1)[0]

    def vlq(self):
        value = 0
        for _ in range(4):
            b = self.byte()
            value = (value << 7) | (b & 0x7F)
            if not b & 0x80:
                return value
        raise MidiError("a length is too long")


def _chunks(data):
    r = _Reader(data)
    while r.pos < len(data):
        kind = r.take(4)
        length = int.from_bytes(r.take(4), "big")
        yield kind, r.take(length)


def _track_events(body):
    """(tick, kind, values) for the events this module needs: tempo, note on, note off."""
    r = _Reader(body)
    tick = 0
    running = None
    while r.pos < len(body):
        tick += r.vlq()
        status = r.byte()
        if status == 0xFF:                      # meta event
            kind = r.byte()
            data = r.take(r.vlq())
            if kind == 0x51 and len(data) == 3:
                yield tick, "tempo", int.from_bytes(data, "big")
            elif kind == 0x2F:
                yield tick, "end", None
                return
            continue
        if status in (0xF0, 0xF7):              # sysex
            r.take(r.vlq())
            continue
        if status > 0xEF:
            raise MidiError(f"unexpected status byte {status:#x}")
        if status < 0x80:                       # running status: this byte is data
            if running is None:
                raise MidiError("data before any status byte")
            first = status
            status = running
        else:
            running = status
            first = r.byte()
        kind = status & 0xF0
        if kind in (0xC0, 0xD0):
            continue                            # program change, channel pressure: one data byte
        second = r.byte()
        channel = status & 0x0F
        if kind == 0x90 and second > 0:
            yield tick, "on", (channel, first, second)
        elif kind == 0x80 or kind == 0x90:
            yield tick, "off", (channel, first)


def read_notes(path):
    """All the notes in a MIDI file, in seconds, sorted by start time then pitch."""
    try:
        with open(path, "rb") as f:
            data = f.read()
    except OSError as e:
        raise MidiError(str(e)) from e
    chunks = list(_chunks(data))
    if not chunks or chunks[0][0] != b"MThd" or len(chunks[0][1]) < 6:
        raise MidiError("no MIDI header")
    division = int.from_bytes(chunks[0][1][4:6], "big")

    tracks = [list(_track_events(body)) for kind, body in chunks[1:] if kind == b"MTrk"]

    if division & 0x8000:                       # SMPTE: frames per second x ticks per frame
        fps = 256 - (division >> 8)
        per_second = fps * (division & 0xFF)
        seconds = lambda t: t / per_second       # noqa: E731
    else:
        if division == 0:
            raise MidiError("zero ticks per beat")
        tempos = sorted((tick, value) for events in tracks for tick, kind, value in events if kind == "tempo")
        seconds = _tempo_map(tempos, division)

    notes = []
    for events in tracks:
        sounding = {}                           # (channel, pitch) -> [(start tick, velocity)], oldest first
        last_tick = 0
        for tick, kind, value in events:
            last_tick = max(last_tick, tick)
            if kind == "on":
                channel, pitch, velocity = value
                sounding.setdefault((channel, pitch), []).append((tick, velocity))
            elif kind == "off" and sounding.get(value):
                start, velocity = sounding[value].pop(0)
                notes.append(Note(seconds(start), seconds(tick), value[1], velocity))
        for (channel, pitch), starts in sounding.items():   # never released: end with the track
            for start, velocity in starts:
                notes.append(Note(seconds(start), seconds(last_tick), pitch, velocity))
    notes.sort(key=lambda n: (n.start, n.pitch))
    return notes


def _tempo_map(tempos, ticks_per_beat):
    """tick -> seconds, following every tempo change (default 120 bpm)."""
    segments = []                               # (start tick, start seconds, seconds per tick)
    tick0, sec0, per_tick = 0, 0.0, 500000 / 1e6 / ticks_per_beat
    for tick, microseconds in tempos:
        sec0 += (tick - tick0) * per_tick
        tick0 = tick
        per_tick = microseconds / 1e6 / ticks_per_beat
        segments.append((tick0, sec0, per_tick))
    first = (0, 0.0, 500000 / 1e6 / ticks_per_beat)

    def seconds(tick):
        start_tick, start_sec, step = first
        for segment in segments:
            if segment[0] <= tick:
                start_tick, start_sec, step = segment
            else:
                break
        return start_sec + (tick - start_tick) * step
    return seconds


# ---------------------------------------------------------------------
# the profile
# ---------------------------------------------------------------------
def _pitch_class_weights(notes):
    """How much each pitch class sounds (by duration; by count if every note is zero-length)."""
    weights = [0.0] * 12
    use_duration = any(n.duration > 0 for n in notes)
    for n in notes:
        weights[n.pitch % 12] += n.duration if use_duration else 1.0
    return weights


def _nearest(pitch_class, register):
    """The note with this pitch class closest to the register (the lower one if two are as close)."""
    candidates = [pitch_class + 12 * octave for octave in range(11)]
    return min(candidates, key=lambda p: (abs(p - register), p))


def profile(notes):
    """The profile of a phrase, as an ordered dict of key -> value (chord and weights are lists)."""
    if not notes:
        return {"notes": 0, "chord": [0] * CHORD_SIZE, "weights": [0.0] * CHORD_SIZE,
                "register": 0.0, "range": 0, "density": 0.0, "legato": 0.0,
                "velocity": 0.0, "jagged": 0.0, "regularity": 0.0}

    use_duration = any(n.duration > 0 for n in notes)
    w = [n.duration if use_duration else 1.0 for n in notes]
    register = sum(n.pitch * x for n, x in zip(notes, w)) / sum(w)

    by_class = _pitch_class_weights(notes)
    strongest = max(by_class)
    classes = sorted((pc for pc in range(12) if by_class[pc] > 0), key=lambda pc: (-by_class[pc], pc))[:CHORD_SIZE]
    chord = sorted((_nearest(pc, register), round(by_class[pc] / strongest, 4)) for pc in classes)
    padding = CHORD_SIZE - len(chord)

    first = min(n.start for n in notes)
    last = max(n.end for n in notes)
    span = last - first

    onsets = sorted({round(n.start, 3) for n in notes})
    gaps = [b - a for a, b in zip(onsets, onsets[1:])]
    if gaps:
        regularity = max(0.0, min(1.0, 1 - statistics.pstdev(gaps) / statistics.mean(gaps)))
    else:
        regularity = 1.0

    leaps = [abs(b.pitch - a.pitch) for a, b in zip(notes, notes[1:])]

    return {
        "notes": len(notes),
        "chord": [p for p, _ in chord] + [0] * padding,
        "weights": [x for _, x in chord] + [0.0] * padding,
        "register": round(register, 4),
        "range": max(n.pitch for n in notes) - min(n.pitch for n in notes),
        "density": round(len(notes) / span, 4) if span > 0 else 0.0,
        "legato": round(_sounding_time(notes) / span, 4) if span > 0 else 0.0,
        "velocity": round(statistics.mean(n.velocity for n in notes) / 127, 4),
        "jagged": round(statistics.mean(leaps), 4) if leaps else 0.0,
        "regularity": round(regularity, 4),
    }


def _sounding_time(notes):
    """How long at least one note is sounding."""
    total, current_start, current_end = 0.0, None, None
    for n in sorted(notes, key=lambda n: n.start):
        if current_end is None or n.start > current_end:
            if current_end is not None:
                total += current_end - current_start
            current_start, current_end = n.start, n.end
        else:
            current_end = max(current_end, n.end)
    return total + (current_end - current_start)


def change(given, made):
    """How far the harmony moved, 0 (the same pitch classes, equally used) to 1 (none in common)."""
    p, q = _pitch_class_weights(given), _pitch_class_weights(made)
    if not sum(p) and not sum(q):
        return 0.0
    if not sum(p) or not sum(q):
        return 1.0
    p = [x / sum(p) for x in p]
    q = [x / sum(q) for x in q]
    return round(0.5 * sum(abs(a - b) for a, b in zip(p, q)), 4)


def osc_args(path, given_path=None):
    """
    The arguments of /phrase_profile: <path> key value … (chord and weights are 6 values each).
    With given_path (the Continuator's input), adds `change`, unless that file can't be read.
    Raises MidiError if `path` can't be read.
    """
    notes = read_notes(path)
    values = profile(notes)
    if given_path is not None:
        try:
            values["change"] = change(read_notes(given_path), notes)
        except MidiError:
            pass
    args = [path]
    for key, value in values.items():
        args.append(key)
        args.extend(value if isinstance(value, list) else [value])
    return args
