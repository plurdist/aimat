"""
A phrase profile after each MIDI result (AIM2-65).

After /basic_pitch_done and /continuator_done the listener also sends
/phrase_profile <path> key value …, a few numbers that describe the whole phrase,
so a patch can use a phrase without playing it. `chord` and `weights` are always
6 values (padded with 0); every other key has one value.
"""
import pytest

from midifile import midi_bytes

LIST_KEYS = ("chord", "weights")
KEYS = {"notes", "chord", "weights", "register", "range", "density",
        "legato", "velocity", "jagged", "regularity"}

# C4 for 2 s, then E4 and G4 for 1 s each
C_MAJOR = [(0.0, 2.0, 60, 100), (2.0, 1.0, 64, 100), (3.0, 1.0, 67, 100)]


def parse(args):
    profile = {"path": args[0]}
    rest = list(args[1:])
    i = 0
    while i < len(rest):
        key = rest[i]
        if key in LIST_KEYS:
            profile[key] = rest[i + 1:i + 7]
            i += 7
        else:
            profile[key] = rest[i + 1]
            i += 2
    return profile


def near(value):
    return pytest.approx(value, abs=1e-3)   # OSC floats are 32-bit


@pytest.fixture
def transcribe(listener, replies, fake_docker, aimat_home):
    """Run Basic Pitch with a result holding these notes; return the profile that follows."""
    def run(notes, **midi_options):
        fake_docker.outputs["basic_pitch"] = midi_bytes(notes, **midi_options)
        audio = aimat_home.musika_out / "take.wav"
        audio.write_bytes(b"")
        listener.trigger("basic_pitch", str(audio))
        (args,) = replies.wait_for("/phrase_profile")
        return parse(args)
    return run


@pytest.fixture
def continue_(listener, replies, fake_docker, aimat_home):
    """Continue a phrase holding `given`, with a continuation holding `made`; return its profile."""
    def run(given, made):
        seed = aimat_home.basic_pitch_out / "phrase.mid"
        seed.write_bytes(midi_bytes(given))
        fake_docker.outputs["continuator"] = midi_bytes(made)
        listener.trigger("continuator", str(seed))
        (args,) = replies.wait_for("/phrase_profile")
        return parse(args)
    return run


# ---------------------------------------------------------------------
# when it's sent
# ---------------------------------------------------------------------
def test_basic_pitch_results_are_followed_by_their_profile(transcribe, replies):
    profile = transcribe(C_MAJOR)

    (done,) = replies.of("/basic_pitch_done")
    assert profile["path"] == done[0]
    order = [address for address, _ in replies.messages if address in ("/basic_pitch_done", "/phrase_profile")]
    assert order == ["/basic_pitch_done", "/phrase_profile"]
    assert set(profile) == KEYS | {"path"}


def test_continuator_results_are_followed_by_their_profile(continue_, replies):
    profile = continue_(given=C_MAJOR, made=C_MAJOR)

    (done,) = replies.of("/continuator_done")
    assert profile["path"] == done[0]
    assert set(profile) == KEYS | {"path", "change"}


def test_an_unreadable_result_is_reported_and_has_no_profile(listener, replies, fake_docker, aimat_home):
    fake_docker.outputs["continuator"] = b"not a MIDI file"
    seed = aimat_home.basic_pitch_out / "phrase.mid"
    seed.write_bytes(midi_bytes(C_MAJOR))

    listener.trigger("continuator", str(seed))

    replies.wait_for_status(lambda s: s.startswith("continuator Error: can't read the MIDI file"))
    assert replies.of("/phrase_profile") == []


# ---------------------------------------------------------------------
# the harmony
# ---------------------------------------------------------------------
def test_the_chord_is_the_phrases_pitches_weighted_by_how_long_they_sound(transcribe):
    profile = transcribe(C_MAJOR)

    assert profile["notes"] == 3
    assert profile["chord"] == [60, 64, 67, 0, 0, 0]
    assert profile["weights"] == [near(1.0), near(0.5), near(0.5), 0, 0, 0]
    assert profile["register"] == near(62.75)   # (60·2 + 64 + 67) / 4
    assert profile["range"] == 7


def test_chord_notes_sit_around_the_phrases_register(transcribe):
    # C2 for 2 s and E5 for 1 s: the register is 49.33, so the chord is C3 and E3
    profile = transcribe([(0.0, 2.0, 36, 100), (2.0, 1.0, 76, 100)])

    assert profile["register"] == near(148 / 3)
    assert profile["chord"] == [48, 52, 0, 0, 0, 0]
    assert profile["range"] == 40


def test_the_chord_keeps_the_six_most_used_pitch_classes(transcribe):
    # pitch classes 0-7, each sounding longer than the one before
    notes = [(k * 1.0, 0.1 * (k + 1), 60 + k, 100) for k in range(8)]

    profile = transcribe(notes)

    assert sorted(n % 12 for n in profile["chord"]) == [2, 3, 4, 5, 6, 7]
    assert 0 not in profile["chord"]


# ---------------------------------------------------------------------
# the texture
# ---------------------------------------------------------------------
GAPPY = [(0.0, 0.5, 60, 64), (1.0, 0.5, 67, 96), (2.0, 0.5, 62, 127)]   # 2.5 s long, sounding for 1.5 s


@pytest.mark.parametrize("bpm", [60, 120, 200])
def test_density_legato_and_velocity_are_measured_in_real_time(transcribe, bpm):
    profile = transcribe(GAPPY, bpm=bpm)

    assert profile["density"] == near(3 / 2.5)       # notes per second
    assert profile["legato"] == near(1.5 / 2.5)      # how much of the time a note sounds
    assert profile["velocity"] == near((64 + 96 + 127) / 3 / 127)


def test_jagged_is_the_average_leap_between_notes(transcribe):
    profile = transcribe(GAPPY)   # 60 → 67 → 62

    assert profile["jagged"] == near(6.0)


def test_evenly_spaced_notes_are_perfectly_regular(transcribe):
    profile = transcribe([(t, 0.2, 60, 100) for t in (0.0, 0.5, 1.0, 1.5)])

    assert profile["regularity"] == near(1.0)


def test_uneven_gaps_are_less_regular(transcribe):
    # gaps of 0.25 s and 0.75 s: they vary by half their average
    profile = transcribe([(0.0, 0.2, 60, 100), (0.25, 0.2, 62, 100), (1.0, 0.2, 64, 100)])

    assert profile["regularity"] == near(0.5)


def test_note_offs_written_as_zero_velocity_note_ons_are_understood(transcribe):
    profile = transcribe(C_MAJOR, zero_velocity_offs=True)

    assert profile["notes"] == 3
    assert profile["weights"] == [near(1.0), near(0.5), near(0.5), 0, 0, 0]


def test_an_empty_phrase_is_all_zeros(transcribe):
    profile = transcribe([])

    assert profile["notes"] == 0
    assert profile["chord"] == [0] * 6
    assert profile["weights"] == [0] * 6
    for key in KEYS - {"notes", "chord", "weights"}:
        assert profile[key] == 0, key


# ---------------------------------------------------------------------
# how far a continuation moved
# ---------------------------------------------------------------------
C_AND_G = [(0.0, 1.0, 60, 100), (1.0, 1.0, 67, 100)]


@pytest.mark.parametrize("made, change", [
    (C_AND_G, 0.0),                                          # the same pitches
    ([(0.0, 1.0, 72, 100), (1.0, 1.0, 62, 100)], 0.5),       # keeps C, swaps G for D
    ([(0.0, 1.0, 62, 100), (1.0, 1.0, 69, 100)], 1.0),       # nothing in common
])
def test_change_says_how_far_the_harmony_moved_from_the_input(continue_, made, change):
    profile = continue_(given=C_AND_G, made=made)

    assert profile["change"] == near(change)
