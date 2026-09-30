"""
Optional model settings sent over OSC as key/value pairs after the file (AIM2-64).

    /trigger_model continuator <file> [key value ...]
    /trigger_model basic_pitch <file> [key value ...]
"""
import pytest


@pytest.fixture
def phrase(aimat_home):
    midi = aimat_home.basic_pitch_out / "phrase.mid"
    midi.write_bytes(b"")
    return str(midi)


@pytest.fixture
def take(aimat_home):
    audio = aimat_home.musika_out / "take1.wav"
    audio.write_bytes(b"")
    return str(audio)


def argv(call):
    """The command as a list, whether the listener built a list or a string."""
    return call.cmd if isinstance(call.cmd, list) else call.cmd.split()


def value_after(command, flag):
    return command[command.index(flag) + 1]


# ---------------------------------------------------------------------
# Continuator
# ---------------------------------------------------------------------
def test_continuator_defaults_are_unchanged(listener, replies, fake_docker, phrase):
    listener.trigger("continuator", phrase)

    replies.wait_for("/continuator_done")
    command = argv(fake_docker.last)
    assert value_after(command, "--anchors") == "5"
    assert value_after(command, "--kmax") == "6"
    assert value_after(command, "--decay-mode") == "late"


def test_continuator_settings_are_passed_through(listener, replies, fake_docker, phrase):
    listener.trigger("continuator", phrase,
                     "mode", "freeform", "seed_from", "start", "anchors", 0, "length", 40,
                     "kmax", 2, "transposition", 1, "decay", "early", "tempo", 90)

    replies.wait_for("/continuator_done")
    command = argv(fake_docker.last)
    assert value_after(command, "--mode") == "freeform"
    assert value_after(command, "--seed-from") == "start"
    assert value_after(command, "--anchors") == "0"
    assert value_after(command, "--length") == "40"
    assert value_after(command, "--kmax") == "2"
    assert "--transposition" in command
    assert value_after(command, "--decay-mode") == "early"
    assert value_after(command, "--tempo") == "90"
    assert command.count("--kmax") == 1  # the default was replaced, not repeated


def test_continuator_accepts_whole_numbers_sent_as_floats(listener, replies, fake_docker, phrase):
    listener.trigger("continuator", phrase, "kmax", 3.0, "length", 25.0)

    replies.wait_for("/continuator_done")
    command = argv(fake_docker.last)
    assert value_after(command, "--kmax") == "3"
    assert value_after(command, "--length") == "25"


def test_transposition_off_leaves_the_flag_out(listener, replies, fake_docker, phrase):
    listener.trigger("continuator", phrase, "transposition", 0)

    replies.wait_for("/continuator_done")
    assert "--transposition" not in argv(fake_docker.last)


def test_continuator_command_is_an_argument_list(listener, replies, fake_docker, phrase):
    listener.trigger("continuator", phrase, "kmax", 2)

    replies.wait_for("/continuator_done")
    assert isinstance(fake_docker.last.cmd, list)
    assert not fake_docker.last.shell


@pytest.mark.parametrize("options, reason", [
    (("colour", "blue"), "unknown setting 'colour'"),
    (("kmax", 99), "kmax"),
    (("kmax", "lots"), "kmax"),
    (("mode", "banana"), "mode"),
    (("length", 0), "length"),
    (("kmax",), "key value pairs"),
])
def test_continuator_rejects_bad_settings(options, reason, listener, replies, fake_docker, phrase):
    listener.trigger("continuator", phrase, *options)

    error = replies.wait_for_status(lambda s: s.startswith("continuator Error"))
    assert reason in error
    assert fake_docker.calls == []


def test_each_continuation_is_reported_as_its_own_file(listener, replies, fake_docker, aimat_home, phrase):
    listener.trigger("continuator", phrase)
    replies.wait_for("/continuator_done", count=1)
    listener.trigger("continuator", phrase)
    first, second = replies.wait_for("/continuator_done", count=2)

    assert first[0] != second[0]
    for (path,) in (first, second):
        assert path.startswith(str(aimat_home.continuator_out))
        assert path.endswith(".mid")
    # the file the listener reports is the file the Continuator was told to write
    written = argv(fake_docker.calls[1])[argv(fake_docker.calls[1]).index("/input/phrase.mid") + 1]
    assert second[0].endswith(written.split("/")[-1])


def test_a_continuation_that_writes_nothing_is_an_error(listener, replies, fake_docker, aimat_home, phrase):
    (aimat_home.continuator_out / "old.mid").write_bytes(b"old")
    fake_docker.mode = "writes_nothing"

    listener.trigger("continuator", phrase)

    replies.wait_for_status(lambda s: s == "continuator Error: No output file generated!")
    assert replies.of("/continuator_done") == []


# ---------------------------------------------------------------------
# Basic Pitch
# ---------------------------------------------------------------------
def test_basic_pitch_defaults_add_no_settings(listener, replies, fake_docker, take):
    listener.trigger("basic_pitch", take)

    replies.wait_for("/basic_pitch_done")
    assert not any(part.startswith("--") for part in argv(fake_docker.last))


def test_basic_pitch_settings_are_passed_through(listener, replies, fake_docker, take):
    listener.trigger("basic_pitch", take,
                     "onset", 0.7, "frame", 0.4, "min_note_ms", 120, "min_hz", 80, "max_hz", 2000)

    replies.wait_for("/basic_pitch_done")
    command = argv(fake_docker.last)
    assert value_after(command, "--onset-threshold") == "0.7"
    assert value_after(command, "--frame-threshold") == "0.4"
    assert value_after(command, "--minimum-note-length") == "120"
    assert value_after(command, "--minimum-frequency") == "80"
    assert value_after(command, "--maximum-frequency") == "2000"


def test_basic_pitch_command_is_an_argument_list(listener, replies, fake_docker, take):
    listener.trigger("basic_pitch", take, "onset", 0.5)

    replies.wait_for("/basic_pitch_done")
    assert isinstance(fake_docker.last.cmd, list)
    assert not fake_docker.last.shell


@pytest.mark.parametrize("options, reason", [
    (("onset", 1.5), "onset"),
    (("frame", "high"), "frame"),
    (("volume", 11), "unknown setting 'volume'"),
    (("onset", 0.5, "frame"), "key value pairs"),
])
def test_basic_pitch_rejects_bad_settings(options, reason, listener, replies, fake_docker, take):
    listener.trigger("basic_pitch", take, *options)

    error = replies.wait_for_status(lambda s: s.startswith("basic_pitch Error"))
    assert reason in error
    assert fake_docker.calls == []
