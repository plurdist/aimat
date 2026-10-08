"""
Models read the file the musician chose, wherever it is (AIM2-11).

Each container can only see the folder mounted at its /input. The listener has
to get the chosen file there, so a file from the Desktop, or a continuation fed
straight back into the Continuator, works like one from the previous model's
output folder.
"""
import re

import pytest

# model -> (OSC arguments after the file path, file extension)
MODELS = {
    "basic_pitch": ((), ".wav"),
    "midi_ddsp":   (("flute",), ".mid"),
    "continuator": ((), ".mid"),
}


def trigger(listener, model, path):
    extra, _ = MODELS[model]
    listener.trigger(model, str(path), *extra)


@pytest.fixture
def desktop(aimat_home):
    folder = aimat_home.root / "Desktop"
    folder.mkdir()
    return folder


@pytest.mark.parametrize("model", MODELS)
def test_a_file_from_any_folder_works(model, listener, replies, fake_docker, desktop):
    chosen = desktop / f"take1{MODELS[model][1]}"
    chosen.write_bytes(b"the musician's file")

    trigger(listener, model, chosen)

    replies.wait_for(f"/{model}_done")
    assert fake_docker.last.inputs == [b"the musician's file"]


@pytest.mark.parametrize("model", MODELS)
def test_the_model_reads_the_file_chosen_this_time(model, listener, replies, fake_docker, desktop):
    # Two different files with the same name: each run must read its own, not a leftover copy.
    ext = MODELS[model][1]
    for name, content in (("a", b"first"), ("b", b"second")):
        (desktop / name).mkdir()
        (desktop / name / f"take{ext}").write_bytes(content)

    trigger(listener, model, desktop / "a" / f"take{ext}")
    replies.wait_for(f"/{model}_done")
    trigger(listener, model, desktop / "b" / f"take{ext}")
    replies.wait_for(f"/{model}_done", count=2)

    assert [call.inputs for call in fake_docker.calls] == [[b"first"], [b"second"]]


def test_a_continuation_can_be_fed_straight_back_in(listener, replies, fake_docker, aimat_home):
    seed = aimat_home.basic_pitch_out / "phrase.mid"
    seed.write_bytes(b"generation 0")

    listener.trigger("continuator", str(seed))
    (first,) = replies.wait_for("/continuator_done")
    listener.trigger("continuator", first[0])
    second = replies.wait_for("/continuator_done", count=2)[1]

    assert second[0] != first[0]
    assert fake_docker.last.inputs == [b"fake output"]


def test_feeding_continuations_back_keeps_the_file_name_short(listener, replies, fake_docker, aimat_home):
    seed = aimat_home.basic_pitch_out / "phrase.mid"
    seed.write_bytes(b"generation 0")

    path = str(seed)
    for n in range(1, 6):
        listener.trigger("continuator", path)
        path = replies.wait_for("/continuator_done", count=n)[-1][0]

    assert re.fullmatch(r"phrase_cont_[0-9a-f]{8}\.mid", path.rsplit("/", 1)[-1])


@pytest.mark.parametrize("model", MODELS)
def test_a_missing_file_is_reported_and_nothing_runs(model, listener, replies, fake_docker, aimat_home):
    missing = aimat_home.root / f"nowhere{MODELS[model][1]}"

    trigger(listener, model, missing)

    replies.wait_for_status(lambda s: s == f"{model} Error: file not found → {missing}")
    assert fake_docker.calls == []


@pytest.mark.parametrize("model", MODELS)
def test_the_copy_made_for_the_model_is_removed_afterwards(model, listener, replies, fake_docker, aimat_home, desktop):
    chosen = desktop / f"take1{MODELS[model][1]}"
    chosen.write_bytes(b"the musician's file")

    trigger(listener, model, chosen)
    replies.wait_for(f"/{model}_done")

    leftovers = [p for p in aimat_home.root.rglob(f"take1{MODELS[model][1]}") if p != chosen]
    assert leftovers == []
    assert chosen.exists()
