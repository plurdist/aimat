# AIM2-5: Full code review of the current AIMAT repo

Linear: [AIM2-5](https://linear.app/ericb-test-workspace/issue/AIM2-5/run-full-code-review-of-current-aimat-repo) · Branch: `eric/aim2-5-run-full-code-review-of-current-aimat-repo`

**Scope.** The code on disk: committed `main` plus the uncommitted Continuator work. `pyproject.toml` still says `0.1.6` and there are no git tags, so "since 0.1.6" means "not in the published package".

**Out of scope.**
- RAVE: waiting on an architecture decision in the backlog.
- Model chain as a feature: the *Model chaining* project covers that later. The chain that exists today (Musika → Basic Pitch → MIDI-DDSP through shared folders) already shipped in 0.1.6, and AIM2-11 covers it.

**Rule for this review.** Record findings only; fix nothing. Fixes come later under their own issues, test-first (see CLAUDE.md).

## Phases

Stop after each phase, report back, and wait before moving on.

### 1. Setup ✅
- [x] Read AIM2-5 and the linked bugs AIM2-6 to AIM2-11
- [x] Check out the review branch

### 2. Standing context ✅
- [x] PLAN.md (this file)
- [x] CLAUDE.md: architecture boundaries, testing approach, and Linear conventions

### 3. Verify the 0.1.6 findings against current code ✅
For each of AIM2-6 to AIM2-11, comment on the Linear issue with a verdict (**confirmed**, **already fixed** or **changed**) and file:line evidence.

Result: all six confirmed. AIM2-10's effect is narrower than described. Continuator repeats AIM2-6, 8, 9 and 11.
- [x] AIM2-6: status blinker not stopped on error paths
- [x] AIM2-7: `OSC_PORT` sets both the listen and reply ports
- [x] AIM2-8: `shell=True` commands built from OSC input; listener bound to `0.0.0.0`
- [x] AIM2-9: stale output reported as success
- [x] AIM2-10: replies sent to the en0 LAN IP
- [x] AIM2-11: Basic Pitch / MIDI-DDSP input mounts tied to the previous module's output folder

### 4. Review the work added since 0.1.6 (Continuator) ✅
Files: `src/aimat/osc_listener.py`, `src/aimat/cli.py`, `docker-compose.yml`, `src/aimat/docker/docker-compose.yml`, `docker/Dockerfile.continuator`, `resources/scripts/continuator/continuate.py`, and the `examples/` → `resources/examples/` move.
Result: filed AIM2-34 to AIM2-42 (including a general code review of the existing scripts). The Continuator contract is noted on AIM2-16. Created the *Model containerisation toolkit* project.
- [x] Review each file. File each new problem in the AIMAT team with the labels **Bug**, **Code review** and one FOCAL pillar, using the structure *What happens / Effect / Fix direction / Done when*
- [x] Decide whether the uncommitted Continuator work is ready to commit as it is, needs changes first, or should stay out of this PR. Note stray files (`test.mid`, `.DS_Store`)

### 5. Write-up and PR ✅
- [x] Write `docs/review-2026-09.md`: the verdicts, the new issues, and the Continuator commit decision
- [x] Open a PR with "Part of AIM2-5" in the description, noting that it was prepared with Claude Code
- [x] Attach or link the review notes on AIM2-5
