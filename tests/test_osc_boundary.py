"""
Current behaviour of every module at the OSC boundary (AIM2-14).

These pin down what the listener does today, so the AIM2-41 refactor can prove
it changed nothing. Known bugs live in test_known_bugs.py instead.
"""


# ---------------------------------------------------------------------
# Musika
# ---------------------------------------------------------------------
def test_musika_generates_audio_and_reports_the_file(listener, replies, fake_docker, aimat_home):
    listener.trigger("musika", 0.8, 10, "techno")

    (done,) = replies.wait_for("/musika_done")
    assert done[0].startswith(str(aimat_home.musika_out))
    assert done[0].endswith(".wav")
    assert "musika generation complete!" in replies.statuses()
    command = fake_docker.last.text
    assert "aimat-musika-1" in command
    assert "--load_path checkpoints/techno" in command
    assert "--seconds 10" in command
    assert "--truncation 0.8" in command


def test_musika_rejects_an_unknown_preset(listener, replies, fake_docker):
    listener.trigger("musika", 0.8, 10, "nope")

    replies.wait_for_status(lambda s: s == "Error: Model 'nope' not found!")
    assert fake_docker.calls == []


def test_musika_reports_a_failed_container_run(listener, replies, fake_docker):
    fake_docker.mode = "fails"
    listener.trigger("musika", 0.8, 10, "techno")

    replies.wait_for_status(lambda s: s.startswith("Error running musika:"))
    assert replies.of("/musika_done") == []


# ---------------------------------------------------------------------
# Basic Pitch
# ---------------------------------------------------------------------
def test_basic_pitch_transcribes_a_file_from_musikas_output(listener, replies, fake_docker, aimat_home):
    audio = aimat_home.musika_out / "take1.wav"
    audio.write_bytes(b"")
    listener.trigger("basic_pitch", str(audio))

    (done,) = replies.wait_for("/basic_pitch_done")
    assert done[0].startswith(str(aimat_home.basic_pitch_out))
    assert done[0].endswith(".mid")
    assert "basic_pitch transcription complete!" in replies.statuses()
    assert "/input/take1.wav" in fake_docker.last.text


def test_basic_pitch_reports_a_missing_file(listener, replies, fake_docker, aimat_home):
    missing = aimat_home.root / "nowhere.wav"
    listener.trigger("basic_pitch", str(missing))

    replies.wait_for_status(lambda s: s == f"basic_pitch Error: file not found → {missing}")
    assert fake_docker.calls == []


# ---------------------------------------------------------------------
# MIDI-DDSP
# ---------------------------------------------------------------------
def test_midi_ddsp_synthesises_with_the_chosen_instrument(listener, replies, fake_docker, aimat_home):
    midi = aimat_home.basic_pitch_out / "melody.mid"
    midi.write_bytes(b"")
    listener.trigger("midi_ddsp", str(midi), "flute")

    (done,) = replies.wait_for("/midi_ddsp_done")
    assert done[0].startswith(str(aimat_home.midi_ddsp_out))
    assert "midi_ddsp synthesis complete using flute!" in replies.statuses()
    assert "--instrument flute" in fake_docker.last.text


def test_midi_ddsp_defaults_to_violin(listener, replies, fake_docker, aimat_home):
    midi = aimat_home.basic_pitch_out / "melody.mid"
    midi.write_bytes(b"")
    listener.trigger("midi_ddsp", str(midi))

    replies.wait_for("/midi_ddsp_done")
    assert "midi_ddsp synthesis complete using violin!" in replies.statuses()


def test_midi_ddsp_activates_conda_on_arm(listener, replies, fake_docker, aimat_home, ol, monkeypatch):
    monkeypatch.setattr(ol.platform, "machine", lambda: "arm64")
    midi = aimat_home.basic_pitch_out / "melody.mid"
    midi.write_bytes(b"")
    listener.trigger("midi_ddsp", str(midi), "flute")

    replies.wait_for("/midi_ddsp_done")
    assert "conda activate midi-ddsp" in fake_docker.last.text


def test_midi_ddsp_runs_directly_on_x86(listener, replies, fake_docker, aimat_home, ol, monkeypatch):
    monkeypatch.setattr(ol.platform, "machine", lambda: "x86_64")
    midi = aimat_home.basic_pitch_out / "melody.mid"
    midi.write_bytes(b"")
    listener.trigger("midi_ddsp", str(midi), "flute")

    replies.wait_for("/midi_ddsp_done")
    assert "conda" not in fake_docker.last.text


# ---------------------------------------------------------------------
# Continuator
# ---------------------------------------------------------------------
def test_continuator_continues_a_midi_file(listener, replies, fake_docker, aimat_home):
    midi = aimat_home.basic_pitch_out / "phrase.mid"
    midi.write_bytes(b"")
    listener.trigger("continuator", str(midi))

    (done,) = replies.wait_for("/continuator_done")
    assert done[0].startswith(str(aimat_home.continuator_out))
    assert done[0].endswith(".mid")
    assert "continuator generation complete!" in replies.statuses()
    assert "/input/phrase.mid" in fake_docker.last.text


# ---------------------------------------------------------------------
# anything else
# ---------------------------------------------------------------------
def test_unknown_model_type_is_reported(listener, replies, fake_docker):
    listener.trigger("theremin")

    replies.wait_for_status(lambda s: s == "Unknown model type: theremin")
    assert fake_docker.calls == []
