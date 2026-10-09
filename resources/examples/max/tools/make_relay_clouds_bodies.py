"""
Builds aimat_relay_clouds_bodies.maxpat (AIM2-67): Eric's saved aimat_relay_clouds.maxpat (v1, with his
plug-ins and MIDI mappings) with each voice given an instrument body, so the three are distinct:
  dust (P1)  wood: knocky, short ring, struck grains, middle brightness
  drift (P2) string / drone: even overtones, long ring, swelling grains, dark
  glass (P3) vibraphone with beating twins: glassy shimmer, triangle grains, bright
and a plug-in slot on each voice (load fx / show / on; off by default, so an empty slot never silences it).

Reads aimat_relay_clouds.maxpat (never writes it) and writes chain_voice_body.maxpat and
aimat_relay_clouds_bodies.maxpat. Re-run it after re-saving the OG patch to carry new settings across.
Voice engine: chain_voice_body.js (spec tools/test_voice_body.js). Needs CNMAT Externals (resonators~).

Usage (from resources/examples/max): python3 tools/make_relay_clouds_bodies.py .
"""
import json
import sys
from pathlib import Path

from maxpatch import Patch, label

BODY_DRIVE = 60.0     # input boost into the resonators (CNMAT suggest 1-200x for a texture)
BODY_MAKEUP = 1.0     # output level of the resonated sound, before the soft limit


def build_voice():
    """chain_voice_body.maxpat: v1's voice with an instrument body per character. Argument: dust | drift | glass."""
    p = Patch()
    inlet = p.add("inlet", 20, 10, 30, 30, None, 0, 1, [""], comment="profile, pass, knobs", index=1)
    brain = p.obj(20, 80, "js chain_voice_body.js", 1, 1, w=150)
    p.wire(inlet, 0, brain)
    p.wire(p.obj(200, 10, "loadmess character #1"), 0, brain)
    floor_in = p.obj(380, 10, "r chain_floor", 0, 1)
    p.wire(floor_in, 0, p.obj(380, 40, "prepend floor")); p.wire(p.boxes[-1]["box"]["id"], 0, brain)
    panic_in = p.obj(520, 10, "r chain_panic", 0, 1)
    panic_m = p.msg(520, 40, "panic")
    p.wire(panic_in, 0, panic_m); p.wire(panic_m, 0, brain)
    tick = p.obj(640, 40, "metro 3000", 2, 1, ["bang"])
    p.wire(p.obj(640, 10, "loadmess 1"), 0, tick); p.wire(tick, 0, brain)
    split = p.obj(20, 120, "route grains clock position bankA bankB xfade level bright ring trim", 11, 11, w=600)
    p.wire(brain, 0, split)

    # the grains
    gf = p.obj(20, 260, "grainflow~ relay_source 24 @autoOverlap 1 @bufChans 2", 4, 9,
               ["multichannelsignal", "list"] + ["multichannelsignal"] * 7, w=360)
    p.wire(p.obj(400, 200, "loadmess state 1"), 0, gf)
    loaded = p.obj(560, 170, "r relay_source_loaded", 0, 1)
    rebuf = p.msg(560, 200, "buf relay_source")
    p.wire(loaded, 0, rebuf); p.wire(rebuf, 0, gf)
    clock = p.obj(140, 200, "phasor~ 10.", 2, 1, ["signal"])
    position = p.obj(260, 200, "line~ 0.5", 2, 2, ["signal", "bang"])
    p.wire(split, 0, gf); p.wire(split, 1, clock); p.wire(clock, 0, gf); p.wire(split, 2, position)
    p.wire(position, 0, gf, 1)
    stereo = p.obj(20, 300, "mc.stereo~", 2, 1, ["multichannelsignal"])
    unpack = p.obj(20, 330, "mc.unpack~ 2", 1, 2, ["signal", "signal"])
    p.wire(gf, 0, stereo); p.wire(stereo, 0, unpack)
    dry_l, dry_r = (unpack, 0), (unpack, 1)

    # the harmony: two resonator banks, crossfaded
    mono = p.obj(20, 380, "+~", 2, 1, ["signal"])
    half = p.obj(20, 410, "*~ 0.5", 2, 1, ["signal"])
    p.wire(unpack, 0, mono, 0); p.wire(unpack, 1, mono, 1); p.wire(mono, 0, half)
    xfade = p.obj(520, 380, "line~", 2, 2, ["signal", "bang"])
    p.wire(split, 5, xfade)
    a_gain = p.obj(520, 410, "!-~ 1.", 2, 1, ["signal"])
    p.wire(xfade, 0, a_gain)
    res = p.obj(20, 520, "+~", 2, 1, ["signal"])
    excite = p.obj(20, 430, f"*~ {BODY_DRIVE}", 2, 1, ["signal"])     # resonators need a strong input
    p.wire(half, 0, excite)
    for i, (route_out, gain_src, x) in enumerate(((3, a_gain, 20), (4, xfade, 270))):
        bank = p.obj(x, 450, "resonators~ smooth 220. 0. 1.", 1, 2, ["signal", "list"], w=190)
        p.wire(split, route_out, bank); p.wire(excite, 0, bank)
        heard = p.obj(x, 485, "*~", 2, 1, ["signal"])
        p.wire(bank, 0, heard, 0); p.wire(gain_src, 0, heard, 1)
        p.wire(heard, 0, res, i)
    makeup = p.obj(20, 550, f"*~ {BODY_MAKEUP}", 2, 1, ["signal"])
    soft = p.obj(20, 580, "tanh~", 1, 1, ["signal"])
    trim_ramp = p.obj(560, 520, "pack 0. 200", 2, 1)
    trim = p.obj(560, 550, "line~ 1.", 2, 2, ["signal", "bang"])
    trimmed = p.obj(20, 600, "*~", 2, 1, ["signal"])
    p.wire(split, 9, trim_ramp); p.wire(trim_ramp, 0, trim)
    p.wire(res, 0, makeup); p.wire(makeup, 0, soft); p.wire(soft, 0, trimmed, 0); p.wire(trim, 0, trimmed, 1)

    # ring: how much of the cloud is resonated
    ring_ramp_in = p.obj(700, 120, "pack 0. 200", 2, 1)
    ring = p.obj(700, 150, "line~", 2, 2, ["signal", "bang"])
    plain = p.obj(700, 180, "!-~ 1.", 2, 1, ["signal"])
    p.wire(split, 8, ring_ramp_in); p.wire(ring_ramp_in, 0, ring); p.wire(ring, 0, plain)
    sung = p.obj(160, 610, "*~", 2, 1, ["signal"])
    p.wire(trimmed, 0, sung, 0); p.wire(ring, 0, sung, 1)

    # level and brightness
    level = p.obj(860, 120, "line~", 2, 2, ["signal", "bang"])
    bright = p.obj(1000, 120, "line~ 9000.", 2, 2, ["signal", "bang"])
    p.wire(split, 6, level); p.wire(split, 7, bright)
    coeffs = p.obj(1000, 150, "filtercoeff~ lowpass", 3, 5, ["signal"] * 5, w=140)
    p.wire(bright, 0, coeffs)
    for i, (src, src_out) in enumerate((dry_l, dry_r)):
        x = 20 + i * 380
        dry = p.obj(x, 650, "*~", 2, 1, ["signal"])
        p.wire(src, src_out, dry, 0); p.wire(plain, 0, dry, 1)
        mix = p.obj(x, 680, "+~", 2, 1, ["signal"])
        p.wire(dry, 0, mix, 0); p.wire(sung, 0, mix, 1)
        tone = p.obj(x, 710, "biquad~", 6, 1, ["signal"])
        p.wire(mix, 0, tone)
        for k in range(5):
            p.wire(coeffs, k, tone, k + 1)
        loud = p.obj(x, 740, "*~", 2, 1, ["signal"])
        p.wire(tone, 0, loud, 0); p.wire(level, 0, loud, 1)
        p.wire(loud, 0, p.add("outlet", x, 780, 30, 30, None, 1, 0, None, index=i + 1))
    return p




def add_plugin_slots(og):
    """Each voice → plug-in slot (vst~, with a dry/wet switch) → its strip. Returns the new boxes and lines."""
    boxes = {b["box"]["id"]: b["box"] for b in og["boxes"]}
    next_id = max(int(i.split("-")[1]) for i in boxes if i.split("-")[1].isdigit()) + 1
    voices = {i: b for i, b in boxes.items() if b.get("text", "").startswith(("chain_voice ", "chain_voice_body "))}
    strips = {i: b for i, b in boxes.items() if b["maxclass"] == "bpatcher" and b.get("args", [""])[0].startswith("VOICE")}
    assert len(voices) == 3 and len(strips) == 3, "expected v1's three voices and strips"
    cut = []
    links = {}
    for l in og["lines"]:
        s, so = l["patchline"]["source"]; d, di = l["patchline"]["destination"]
        if s in voices and d in strips:
            cut.append(l); links.setdefault(s, d)
    assert len(cut) == 6, "expected each voice wired straight into its strip"
    og["lines"] = [l for l in og["lines"] if l not in cut]

    p = Patch()
    for vid, sid in links.items():
        vx, vy = voices[vid]["patching_rect"][:2]
        cx = strips[sid]["presentation_rect"][0] - 35          # the player panel's left edge
        x0, y0 = vx + 300, vy
        slot = p.obj(x0, y0, "vst~ 2 2 @autosave 1", 2, 8, ["signal", "signal", "", "", "", "", "", ""], w=160)
        load_b = p.button(x0 + 200, y0, 18, pres=[cx + 70, 44 + 159, 18, 18])
        label(p, cx + 90, 44 + 160, "load fx", 40, 9.0)
        show_b = p.button(x0 + 240, y0, 18, pres=[cx + 132, 44 + 159, 18, 18])
        label(p, cx + 152, 44 + 160, "show", 30, 9.0)
        load_m = p.msg(x0 + 200, y0 + 30, "plug"); show_m = p.msg(x0 + 240, y0 + 30, "open")
        p.wire(load_b, 0, load_m); p.wire(load_m, 0, slot); p.wire(show_b, 0, show_m); p.wire(show_m, 0, slot)
        fx_on = p.toggle(x0 + 280, y0, 18, pres=[cx + 182, 44 + 159, 18, 18])
        label(p, cx + 201, 44 + 160, "on", 18, 9.0)
        p.wire(p.obj(x0 + 280, y0 - 30, "loadmess 0"), 0, fx_on)
        ramp_in = p.obj(x0 + 280, y0 + 30, "pack 0. 50", 2, 1)
        wet = p.obj(x0 + 280, y0 + 60, "line~", 2, 2, ["signal", "bang"])
        dry = p.obj(x0 + 280, y0 + 90, "!-~ 1.", 2, 1, ["signal"])
        p.wire(fx_on, 0, ramp_in); p.wire(ramp_in, 0, wet); p.wire(wet, 0, dry)
        for side in (0, 1):
            dry_part = p.obj(x0 + side * 80, y0 + 120, "*~", 2, 1, ["signal"])
            wet_part = p.obj(x0 + side * 80, y0 + 150, "*~", 2, 1, ["signal"])
            both = p.obj(x0 + side * 80, y0 + 180, "+~", 2, 1, ["signal"])
            p.wire(vid, side, dry_part, 0); p.wire(dry, 0, dry_part, 1)
            p.wire(vid, side, slot, side)
            p.wire(slot, side, wet_part, 0); p.wire(wet, 0, wet_part, 1)
            p.wire(dry_part, 0, both, 0); p.wire(wet_part, 0, both, 1)
            p.wire(both, 0, sid, side)
    # renumber the new boxes after the OG's own ids (existing ids, e.g. voices and strips, stay as they are)
    rename = {b["box"]["id"]: f"obj-{next_id + n}" for n, b in enumerate(p.boxes)}
    for b in p.boxes:
        b["box"]["id"] = rename[b["box"]["id"]]
    for l in p.lines:
        for end in ("source", "destination"):
            l["patchline"][end][0] = rename.get(l["patchline"][end][0], l["patchline"][end][0])
    og["boxes"] += p.boxes
    og["lines"] += p.lines


def build_bodies(out):
    doc = json.load(open(out / "aimat_relay_clouds.maxpat"))
    og = doc["patcher"]
    for b in og["boxes"]:
        box = b["box"]
        text = box.get("text", "")
        if text.startswith("chain_voice "):
            box["text"] = "chain_voice_body " + text.split(" ", 1)[1]
        elif box["maxclass"] == "comment" and text.startswith("pitch in steps"):
            box["text"] = "steps"
            box["presentation_rect"][2] = 34.0
        elif box["maxclass"] == "comment" and text == "AIMAT RELAY · CLOUDS":
            box["text"] = "AIMAT RELAY · BODIES"
        elif box["maxclass"] == "panel" and box.get("bgcolor") == [0.78, 0.95, 0.8, 1.0]:
            box["bgcolor"] = [0.96, 0.96, 0.95, 1.0]          # saved mid-turn: open with nobody's panel lit
    add_plugin_slots(og)
    json.dump(doc, open(out / "aimat_relay_clouds_bodies.maxpat", "w"), indent=1)
    return len(og["boxes"]), len(og["lines"])


if __name__ == "__main__":
    out = Path(sys.argv[1])
    b, c = build_voice().save(out / "chain_voice_body.maxpat", [100.0, 100.0, 1200.0, 860.0], presentation=False)
    print(f"chain_voice_body.maxpat: {b} boxes, {c} cords")
    b, c = build_bodies(out)
    print(f"aimat_relay_clouds_bodies.maxpat: {b} boxes, {c} cords (from your saved aimat_relay_clouds.maxpat)")
