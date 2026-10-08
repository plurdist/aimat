"""
A tiny Standard MIDI File writer for tests, so tests can make exact phrases
without depending on the MIDI library the listener uses.
"""

TICKS_PER_BEAT = 480


def _vlq(n):
    """MIDI variable-length quantity."""
    out = [n & 0x7F]
    n >>= 7
    while n:
        out.append((n & 0x7F) | 0x80)
        n >>= 7
    return bytes(reversed(out))


def _track(events):
    """events: (tick, bytes) pairs. Returns an MTrk chunk ending with end-of-track."""
    body = b""
    now = 0
    for tick, data in sorted(events, key=lambda e: e[0]):
        body += _vlq(tick - now) + data
        now = tick
    body += _vlq(0) + b"\xff\x2f\x00"
    return b"MTrk" + len(body).to_bytes(4, "big") + body


def midi_bytes(notes, bpm=120, zero_velocity_offs=False):
    """
    notes: (start seconds, duration seconds, pitch, velocity 1-127).
    Format 1: track 0 holds the tempo, track 1 the notes (as Basic Pitch writes it).
    """
    def ticks(seconds):
        return round(seconds * TICKS_PER_BEAT * bpm / 60)

    tempo = round(60_000_000 / bpm).to_bytes(3, "big")
    tempo_track = _track([(0, b"\xff\x51\x03" + tempo)])

    events = []
    for start, duration, pitch, velocity in notes:
        off = bytes([0x90, pitch, 0]) if zero_velocity_offs else bytes([0x80, pitch, 64])
        # sort key puts note-offs before note-ons at the same tick
        events.append((ticks(start + duration), 0, off))
        events.append((ticks(start), 1, bytes([0x90, pitch, velocity])))
    events.sort(key=lambda e: (e[0], e[1]))
    note_track = _track([(tick, data) for tick, _, data in events])

    header = b"MThd" + (6).to_bytes(4, "big") + (1).to_bytes(2, "big") + (2).to_bytes(2, "big") \
        + TICKS_PER_BEAT.to_bytes(2, "big")
    return header + tempo_track + note_track


def write_midi(path, notes, **kwargs):
    path.write_bytes(midi_bytes(notes, **kwargs))
    return path
