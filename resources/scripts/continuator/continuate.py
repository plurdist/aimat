"""
continuate.py — batch CLI for Pachet's Continuator.

Usage:
    python continuate.py <input.mid> <output.mid> [options]

Designed as a drop-in node for AIMAT: takes one MIDI file, learns its
style, and generates a continuation as a new MIDI file.

Modes
-----
continue  (default)
    Seeds generation from a single note in the input, chosen via
    --seed-from, so the output picks up that musical context.

freeform
    Generates purely from the learned style statistics with no seed.
    More varied / unpredictable output.

Anchors
-------
--anchors N pins N viewpoints from the input at evenly-spaced positions
in the output. This uses the belief-propagation constraint solver to
guarantee the output passes through those familiar waypoints, which
can reduce incoherence at the cost of some freedom.
Anchors are derived from the input itself so they're guaranteed to
exist in the learned model (no fragility).


python continuate.py <input.mid> <output.mid> [options]

ARGUMENTS
  input                 Input MIDI file (training material)
  output                Output MIDI file to write

OPTIONS
  --mode                continue (default) | freeform
                          continue  = seeded from a point in the input
                          freeform  = pure style sampling, no seed

  --seed-from           end (default) | start | middle
                          Which note seeds generation in continue mode.
                          Ignored when --anchors > 0.

  --anchors N           Pin N viewpoints from the input as hard constraints
                        at evenly-spaced output positions. Reduces clangers.
                        Try 3–8. Default: 0

  --length N            Notes to generate. Default: 100

  --kmax N              Markov context window. Higher = tighter mimicry,
                        lower = more variety. Default: 4. Try 2–6.

  --transposition       Train on all 12 keys. Helps with short input files.

  --decay-mode          full (default) | late | middle | early
                          full   = all learned patterns weighted equally
                          late   = emphasises the end of the input
                          early  = emphasises the beginning
                          middle = emphasises the middle section

  --tempo N             Output BPM. -1 = preserve source tempo. Default: -1
"""

import argparse
import sys
from pathlib import Path


def evenly_spaced_indices(count, total):
    """Return `count` indices evenly distributed across a range of `total` items."""
    if count <= 0 or total <= 0:
        return []
    if count == 1:
        return [0]
    if count >= total:
        return list(range(total))
    step = (total - 1) / (count - 1)
    return [int(round(i * step)) for i in range(count)]


def build_anchor_constraints(generator, all_notes, n_anchors, out_length):
    """
    Derive a constraints dict mapping output positions -> viewpoints,
    drawn from evenly-spaced notes in the input.
    """
    n_anchors = min(n_anchors, len(all_notes), out_length)
    input_positions = evenly_spaced_indices(n_anchors, len(all_notes))
    output_positions = evenly_spaced_indices(n_anchors, out_length)

    constraints = {}
    for in_idx, out_pos in zip(input_positions, output_positions):
        vp = generator.get_viewpoint(all_notes[in_idx])
        constraints[out_pos] = vp
    return constraints, input_positions, output_positions


def main():
    parser = argparse.ArgumentParser(
        description="Generate a Continuator continuation from a MIDI file.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("input",  help="Path to input MIDI file (training material)")
    parser.add_argument("output", help="Path to write the generated MIDI file")
    parser.add_argument(
        "--mode", choices=["continue", "freeform"], default="continue",
        help=(
            "continue: seed output from the end of the input (sounds connected); "
            "freeform: generate purely from learned style, no seed (more varied). "
            "Default: continue"
        ),
    )
    parser.add_argument(
        "--seed-from", choices=["end", "start", "middle"], default="end",
        help=(
            "[continue mode, no anchors] Which part of the input seeds the generation. "
            "Ignored when --anchors > 0."
        ),
    )
    parser.add_argument(
        "--anchors", type=int, default=0,
        help=(
            "Pin N viewpoints from the input as hard constraints at evenly-spaced "
            "positions in the output. Improves cohesion by forcing the generator "
            "to pass through familiar waypoints. Try 3–8 for noticeable effect. "
            "Default: 0 (no anchors)"
        ),
    )
    parser.add_argument(
        "--length", type=int, default=100,
        help="Number of notes to generate (default: 100)"
    )
    parser.add_argument(
        "--kmax", type=int, default=4,
        help="Maximum Markov order / context window (default: 4)"
    )
    parser.add_argument(
        "--transposition", action="store_true",
        help="Train on all 12 transpositions for a richer model (useful for short inputs)"
    )
    parser.add_argument(
        "--decay-mode", choices=["full", "late", "middle", "early"], default="full",
        help="Which time window of memory to sample from (default: full)"
    )
    parser.add_argument(
        "--tempo", type=int, default=-1,
        help="Output tempo in BPM; -1 preserves the source file's tempo (default: -1)"
    )
    args = parser.parse_args()

    input_path = Path(args.input)
    output_path = Path(args.output)

    if not input_path.exists():
        print(f"Error: input file not found: {input_path}", file=sys.stderr)
        sys.exit(1)

    output_path.parent.mkdir(parents=True, exist_ok=True)

    try:
        from ctor.continuator import Continuator2
    except ImportError as e:
        print(
            f"Error: could not import ctor — is the package installed?\n  {e}",
            file=sys.stderr,
        )
        sys.exit(2)

    print(f"Loading and learning from: {input_path}")
    generator = Continuator2(
        midi_file=str(input_path),
        kmax=args.kmax,
        transposition=args.transposition,
    )

    if args.decay_mode != "full":
        generator.set_decay_mode(args.decay_mode)

    all_notes = [n for seq in generator.vom.input_sequences for n in seq]
    if not all_notes:
        print("Error: no notes found in input file.", file=sys.stderr)
        sys.exit(3)
    print(f"  Learned {len(all_notes)} notes across {len(generator.vom.input_sequences)} phrase(s)")

    print(f"Generating {args.length}-note continuation (mode: {args.mode}, anchors: {args.anchors})...")

    vp_sequence = None

    if args.mode == "freeform" and args.anchors == 0:
        vp_sequence = generator.sample_sequence_0(length=args.length)

    elif args.anchors > 0:
        constraints, in_pos, out_pos = build_anchor_constraints(
            generator, all_notes, args.anchors, args.length
        )
        print(f"  Pinning {len(constraints)} anchor(s):")
        print(f"    input note indices  -> {in_pos}")
        print(f"    output positions    -> {out_pos}")
        try:
            vp_sequence = generator.sample_sequence(
                prefix=None,
                length=args.length,
                constraints=constraints,
            )
        except Exception as e:
            print(f"  Warning: anchor-constrained generation failed ({e}).", file=sys.stderr)
            vp_sequence = None

        if vp_sequence is None:
            print("  Falling back to seeded continuation (no anchors).", file=sys.stderr)

    if vp_sequence is None and args.mode == "continue":
        # Seeded (no anchors) path — also used as a fallback.
        n = len(all_notes)
        if args.seed_from == "end":
            seed_note = all_notes[-1]
        elif args.seed_from == "start":
            seed_note = all_notes[0]
        else:  # middle
            seed_note = all_notes[n // 2]
        print(f"  Seeding from {args.seed_from} of input (note index {all_notes.index(seed_note)})")
        try:
            vp_sequence = generator.sample_sequence(prefix=[seed_note], length=args.length)
        except Exception as e:
            print(f"  Warning: seeded generation failed ({e}).", file=sys.stderr)
            vp_sequence = None

    if vp_sequence is None:
        print("  Final fallback: freeform zero-order sampling.", file=sys.stderr)
        vp_sequence = generator.sample_sequence_0(length=args.length)

    if not vp_sequence:
        print("Error: generation produced an empty sequence.", file=sys.stderr)
        sys.exit(4)

    # Drop the trailing end-marker viewpoint before realising
    sequence_to_render = vp_sequence[:-1] if len(vp_sequence) > 1 else vp_sequence

    rendered = generator.realize_vp_sequence(sequence_to_render)
    generator.save_midi(rendered, str(output_path), tempo=args.tempo)
    print(f"Saved: {output_path}")


if __name__ == "__main__":
    main()
