"""
Known bugs from the AIM2-5 review, written as the behaviour we want.

Each test is a strict xfail: it must fail today. When a fix makes it pass,
pytest reports XPASS as a failure, so the fix's PR removes the marker and the
test becomes that bug's regression test (its "Done when").
"""
import os
import time

import pytest


@pytest.mark.xfail(reason="AIM2-6: blinker keeps sending 'Generating…' over the error", strict=True)
def test_an_error_stays_visible_on_status(listener, replies, fake_docker):
    listener.trigger("musika", 0.8, 10, "nope")
    replies.wait_for_status(lambda s: s.startswith("Error"))

    time.sleep(1.2)  # the blinker ticks every 0.5s

    assert replies.statuses()[-1] == "Error: Model 'nope' not found!"


MODEL_TRIGGERS = {
    "musika":      lambda home: ("musika", 0.8, 10, "techno"),
    "basic_pitch": lambda home: ("basic_pitch", str(home.musika_out / "take1.wav")),
    "midi_ddsp":   lambda home: ("midi_ddsp", str(home.basic_pitch_out / "melody.mid"), "flute"),
    "continuator": lambda home: ("continuator", str(home.basic_pitch_out / "phrase.mid")),
}


AIM2_8 = pytest.mark.xfail(reason="AIM2-8: commands are shell strings built from OSC input", strict=True)


@pytest.mark.parametrize("model", [
    pytest.param("musika", marks=AIM2_8),
    "basic_pitch",   # fixed in AIM2-64
    pytest.param("midi_ddsp", marks=AIM2_8),
    "continuator",   # fixed in AIM2-64
])
def test_container_commands_are_argument_lists(model, listener, replies, fake_docker, aimat_home):
    for f in (aimat_home.musika_out / "take1.wav",
              aimat_home.basic_pitch_out / "melody.mid",
              aimat_home.basic_pitch_out / "phrase.mid"):
        f.write_bytes(b"")
    listener.trigger(*MODEL_TRIGGERS[model](aimat_home))

    replies.wait_for(f"/{model}_done")
    call = fake_docker.last
    assert isinstance(call.cmd, list) and not call.shell


@pytest.mark.xfail(reason="AIM2-9: the previous run's file is reported as a fresh result", strict=True)
def test_a_job_that_writes_nothing_reports_an_error(listener, replies, fake_docker, aimat_home):
    stale = aimat_home.musika_out / "yesterday.wav"
    stale.write_bytes(b"old")
    an_hour_ago = time.time() - 3600
    os.utime(stale, (an_hour_ago, an_hour_ago))
    fake_docker.mode = "writes_nothing"

    listener.trigger("musika", 0.8, 10, "techno")
    replies.wait_for_status(lambda s: "complete" in s or "Error" in s)
    time.sleep(0.2)

    assert replies.of("/musika_done") == []
    assert any("Error" in s for s in replies.statuses())


@pytest.mark.xfail(reason="AIM2-39: simultaneous jobs report whichever file is newest", strict=True)
def test_simultaneous_jobs_each_report_their_own_file(listener, replies, fake_docker):
    fake_docker.delay_after_write = 0.3  # both files exist before either job looks for its output

    listener.trigger("musika", 0.8, 10, "techno")
    time.sleep(0.05)
    listener.trigger("musika", 0.8, 10, "techno")
    first, second = replies.wait_for("/musika_done", count=2)

    assert first[0] != second[0]
