"""
Shaping a phrase before it's passed on (AIM2-66).

/shape_phrase <path> register R pace P focus F leap L replies /shape_profile <path> …,
the profile of the reshaped phrase, so a player hears their sculpting at once.
The same keys after /trigger_model continuator <path> reshape the phrase the
Continuator learns from.
"""
import pytest

from aimat.phrase import read_notes
from midifile import midi_bytes
from test_phrase_profile import C_MAJOR, GAPPY, KEYS, near, parse

C_AND_G = [(0.0, 1.0, 60, 100), (1.0, 1.0, 67, 100)]


@pytest.fixture
def held(aimat_home):
    """A phrase a player holds (a continuation, in the Continuator's output folder)."""
    def write(notes):
        path = aimat_home.continuator_out / "phrase_cont_0000abcd.mid"
        path.write_bytes(midi_bytes(notes))
        return path
    return write


@pytest.fixture
def shape(listener, replies, held):
    """Send /shape_phrase for a phrase holding `notes`; return the /shape_profile that comes back."""
    def run(notes, *settings):
        path = held(notes)
        listener.send("/shape_phrase", str(path), *settings)
        (args,) = replies.wait_for("/shape_profile")
        return parse(args)
    return run


def notes_read_by_the_model(fake_docker, tmp_path):
    copy = tmp_path / "read.mid"
    copy.write_bytes(fake_docker.last.inputs[0])
    return read_notes(copy)


# ---------------------------------------------------------------------
# hearing the shape: /shape_phrase → /shape_profile
# ---------------------------------------------------------------------
def test_neutral_shaping_changes_nothing(shape, held):
    profile = shape(C_MAJOR, "register", 0, "pace", 1.0, "focus", 12, "leap", 1.0)

    assert profile["path"] == str(held(C_MAJOR))
    assert set(profile) == KEYS | {"path"}
    assert profile["chord"] == [60, 64, 67, 0, 0, 0]
    assert profile["register"] == near(62.75)
    assert profile["density"] == near(3 / 4)


def test_settings_left_out_are_neutral(shape):
    profile = shape(C_MAJOR)

    assert profile["chord"] == [60, 64, 67, 0, 0, 0]


def test_register_transposes_the_phrase(shape):
    profile = shape(C_MAJOR, "register", 12)

    assert profile["chord"] == [72, 76, 79, 0, 0, 0]
    assert profile["register"] == near(74.75)


def test_pace_speeds_the_phrase_up(shape):
    profile = shape(GAPPY, "pace", 2.0)

    assert profile["density"] == near(2 * 3 / 2.5)
    assert profile["legato"] == near(1.5 / 2.5)       # the shape of the rhythm is kept


def test_focus_keeps_only_the_most_used_pitch_classes(shape):
    profile = shape(C_MAJOR, "focus", 2)            # C (2 s), then E and G tie (1 s): the lower one wins

    assert profile["notes"] == 2
    assert profile["chord"] == [60, 64, 0, 0, 0, 0]


def test_wider_leaps_make_the_phrase_more_jagged_within_its_own_notes(shape):
    profile = shape(GAPPY, "leap", 2.0)             # 60 → 67 → 62 (jagged 6)

    assert profile["jagged"] > 6
    assert {n % 12 for n in profile["chord"] if n} <= {0, 2, 7}


def test_narrower_leaps_make_it_smoother(shape):
    profile = shape(GAPPY, "leap", 0.25)

    assert profile["jagged"] < 6


def test_whole_number_settings_can_arrive_as_floats_from_max(shape):
    profile = shape(C_MAJOR, "register", 12.0, "focus", 2.0)

    assert profile["chord"] == [72, 76, 0, 0, 0, 0]


@pytest.mark.parametrize("settings, problem", [
    (("register", 30), "register"),
    (("pace", 0), "pace"),
    (("focus", 0), "focus"),
    (("leap", 3), "leap"),
    (("wobble", 1), "wobble"),
    (("register",), "pairs"),
])
def test_bad_settings_are_reported(listener, replies, held, settings, problem):
    listener.send("/shape_phrase", str(held(C_MAJOR)), *settings)

    text = replies.wait_for_status(lambda s: s.startswith("shape Error"))
    assert problem in text
    assert replies.of("/shape_profile") == []


def test_a_missing_phrase_is_reported(listener, replies, aimat_home):
    missing = aimat_home.root / "nowhere.mid"
    listener.send("/shape_phrase", str(missing), "register", 2)

    replies.wait_for_status(lambda s: s == f"shape Error: file not found → {missing}")


# ---------------------------------------------------------------------
# passing the shape on: the Continuator learns from the reshaped phrase
# ---------------------------------------------------------------------
def test_the_continuator_learns_from_the_reshaped_phrase(listener, replies, fake_docker, held, tmp_path):
    listener.trigger("continuator", str(held(C_MAJOR)), "kmax", 4, "register", 12, "focus", 2)

    replies.wait_for("/continuator_done")
    read = notes_read_by_the_model(fake_docker, tmp_path)
    assert sorted(n.pitch for n in read) == [72, 76]
    assert "--kmax 4" in fake_docker.last.text


def test_without_shaping_the_continuator_reads_the_phrase_as_it_is(listener, replies, fake_docker, held):
    phrase = held(C_MAJOR)
    listener.trigger("continuator", str(phrase), "kmax", 4)

    replies.wait_for("/continuator_done")
    assert fake_docker.last.inputs == [phrase.read_bytes()]


def test_change_is_measured_from_the_phrase_as_held(listener, replies, fake_docker, held):
    fake_docker.outputs["continuator"] = midi_bytes([(0.0, 1.0, 60, 100)])   # C only
    listener.trigger("continuator", str(held(C_AND_G)), "focus", 1)          # sculpted down to C only

    (args,) = replies.wait_for("/phrase_profile")
    assert parse(args)["change"] == near(0.5)                                # held: C and G


def test_bad_shaping_on_a_pass_is_reported_and_nothing_runs(listener, replies, fake_docker, held):
    listener.trigger("continuator", str(held(C_MAJOR)), "register", 30)

    replies.wait_for_status(lambda s: s.startswith("continuator Error") and "register" in s)
    assert fake_docker.calls == []
