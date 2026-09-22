# AIMAT: standing context

AIMAT (AI Music Artist Toolkit) runs generative music models (Musika, Basic Pitch, MIDI-DDSP, Continuator) in Docker containers. Musicians drive it over OSC from Max/MSP, Max for Live, PD or any other OSC client. It's published on PyPI as `aimat`, and the CLI entry point is `aimat.cli:main`.

## Purpose

AIMAT is research software, and the FOCAL framework is the research contribution it puts into practice. It gives musicians a simplified frontend over open-source generative models. Each model exposes a small set of parameters, chosen to be useful and interesting to explore, and that set can deliberately subvert what the original model was designed for. The frontend (Max today, or any other OSC host) offers simple controls, and the interaction *between* models (chaining) is a core part of the design. Longer term, the plan is to document and partly automate how an open-source model gets retrofitted into an AIMAT container (Linear project *Model containerisation toolkit*).

When judging a change, ask whether it lowers a musician's barrier to installing, understanding or steering a model, without leaking ML complexity into the frontend.

## Architecture boundaries

- **Logic lives outside Max.** Model selection, argument validation, file handling, job lifecycle, status and error reporting all belong in Python (`src/aimat/`) or inside the containers. Don't add behaviour to the Max patch to work around a problem in the listener.
- **The Max patch is a thin control surface.** It sends OSC messages and shows the replies. Nothing more.
- **The OSC boundary is the contract.** Test the patch's behaviour there: given these OSC messages in, the listener sends these `/status` and result messages out. If the listener gets the contract right, the patch works.

Layout:
- `src/aimat/osc_listener.py`: OSC server, job dispatch to containers, and replies to Max
- `src/aimat/cli.py`: `aimat start|stop|…` and container and listener lifecycle
- `src/aimat/docker/docker-compose.yml`: the compose file shipped in the package. The root `docker-compose.yml` is the dev copy, so keep the two in sync.
- `docker/Dockerfile.*`: one image per model
- `resources/`: example Max patch, demo GIFs, and per-model helper scripts
- `local_test/`, `dist/`: gitignored local scratch and build output

## Testing: TDD for Python, Docker and OSC

- Write a failing test before every fix or feature in the Python, Docker and OSC code. Each Linear bug's **Done when** line describes the test that proves the fix.
- Test the listener at the OSC boundary: send real OSC messages to a listener bound to localhost, and assert on the reply messages. Stub or fake the container calls so these tests don't need Docker or model weights.
- Test command construction as argument lists, not shell strings.
- Docker and compose checks (the image builds, services start, volumes mount where expected) are integration tests. Mark them so the fast suite runs without Docker.
- The Max patch has no unit tests. Its behaviour is covered by the OSC-boundary tests.
- Run the suite with `pytest` from a dev environment: `python3 -m venv .venv && .venv/bin/pip install -e ".[dev]" && .venv/bin/pytest`. The tests live under `tests/`, and the shared fixtures (`listener`, `replies`, `fake_docker`, `aimat_home`) are in `tests/conftest.py`.
- `FakeDocker` mirrors the folder mounts in `docker-compose.yml` (`AimatHome.mounts`). If the mounts change, update both.
- Known bugs are strict `xfail` tests in `tests/test_known_bugs.py`. A fix makes its test pass, strict mode reports the XPASS as a failure, and the fix's PR removes the marker, which turns the test into that bug's regression test.

## Linear conventions

- Team **AIMAT** (issue prefix `AIM2-`), project **Code review & hardening**.
- Bugs have the labels **Bug**, one **Evidence** label (e.g. **Code review**) and one **FOCAL pillar**:
  - **Infrastructure**: install, builds, reliability, runtime
  - **Integration**: fits inside the musician's existing tools (Max, M4L, DAW)
  - **Legibility**: can musicians predict and understand input → output?
  - **Appropriation**: parameter exposure and creative control in musical terms
  - **Data & Governance**: data, consent, provenance
- Write issue bodies with the sections **What happens / Effect / Fix direction / Done when**.
- Name branches with Linear's `gitBranchName`, e.g. `eric/aim2-5-…`.
- PR descriptions reference the issue ("Part of AIM2-5" or "Fixes AIM2-n") and note any AI assistance (the supervisor requires this).

## Current scope notes

- RAVE is on hold, pending an architecture decision in the backlog.
- The Continuator work comes from preliminary tests and hasn't been verified. Review it before committing any of it.
