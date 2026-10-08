"""
Builds aimat_relay_clouds_mix.maxpat: v1 (aimat_relay_clouds.maxpat, same voices and engines) plus a
MIXER window. An output grid sets which sources each speaker plays, and a sends grid sets how much of
each source feeds the reverb and delay. It also has meters, an output dropdown per speaker, and the
current source and phrase.

Writes only aimat_relay_clouds_mix.maxpat. It reuses chain_voice.maxpat, chain_voice.js,
chain_relay_clouds.js, chain_strip.maxpat and chain_return.maxpat as they are.
Mixer engine: chain_mixer.js (spec tools/test_mixer.js).

Usage (from resources/examples/max): python3 tools/make_relay_clouds_mix.py .
"""
import sys
from pathlib import Path

from maxpatch import BG, Patch, label, section

ROWS = [("V1", "VOICE 1 · dust"), ("V2", "VOICE 2 · drift"), ("V3", "VOICE 3 · glass"),
        ("REVL", "REVERB L"), ("REVR", "REVERB R"), ("DLYL", "DELAY L"), ("DLYR", "DELAY R"),
        ("DDSP", "DDSP"), ("BED", "SOURCE BED")]
SEND_ROWS = ["V1", "V2", "V3", "DDSP", "BED"]
# must match DEFAULT_OUT / DEFAULT_SEND in chain_mixer.js
DEFAULT_OUT = {"V1": [1, 0, 0], "V2": [0, 1, 0], "V3": [0, 0, 1], "REVL": [1, 0.5, 0], "REVR": [0, 0.5, 1],
               "DLYL": [1, 0.5, 0], "DLYR": [0, 0.5, 1], "DDSP": [1, 1, 1], "BED": [1, 1, 1]}
DEFAULT_SEND = {"V1": [0.2, 0], "V2": [0.2, 0], "V3": [0.2, 0], "DDSP": [0.2, 0], "BED": [0.2, 0]}


# name, size (ms), spray, ring: must match CHARACTERS in chain_voice.js
CHARACTERS = [("dust", 70.0, 0.5, 0.5), ("drift", 400.0, 0.15, 0.8), ("glass", 140.0, 0.3, 0.7)]
TURN_ON = "bgcolor 0.78 0.95 0.80 1."
TURN_OFF = "bgcolor 0.96 0.96 0.95 1."
RESONATOR_MAKEUP = 12.0   # resonators are narrow band-passes, so they need gain before the mix


def as_subpatcher(sub, rect):
    return {"fileversion": 1, "appversion": {"major": 9, "minor": 0, "revision": 7, "architecture": "x64", "modernui": 1},
            "classnamespace": "box", "rect": rect, "gridsize": [15.0, 15.0], "openinpresentation": 1,
            "boxes": sub.boxes, "lines": sub.lines}


def build_mixer():
    """The MIXER window: output grid, sends grid, meters, speaker outputs, source and phrase."""
    p = Patch()
    W, H = 1200, 580
    p.panel(0, 0, W, H, BG, pres=[0, 0, W, H], rounded=0)
    p.add("inlet", 10, 10, 30, 30, None, 0, 1, [""], comment="open")
    p.comment(0, 0, "MIXER", 120, 20.0, bold=True, pres=[12, 6, 120, 28])
    label(p, 110, 14, "drag a dial to change a level; every dial can be MIDI-mapped", 420, 10.0)
    wake = p.obj(1400, 10, "loadbang", 1, 1, ["bang"])
    to_mixer = p.obj(1400, 600, "s chain_mix", 1, 0)

    def cell(key, col, x, y, px, py, init, word):
        name = f"mix_{key}_{col}"
        d = p.dial(x, y, name, 0.0, 1.0 if word == "send" else 1.5, init, 1, pres=[px, py, 44, 48], label=col)
        p.boxes[-1]["box"]["showname"] = 0
        p.wire(p.obj(x, y - 30, f"r {name}", 0, 1), 0, d)
        pre = p.obj(x, y + 60, f"prepend {word} {key} {col}")
        p.wire(d, 0, pre); p.wire(pre, 0, to_mixer); p.wire(wake, 0, d)

    # output grid
    section(p, "out", "OUTPUT GRID · what each speaker plays", 8, 40, 440, 530)
    for k in range(3):
        label(p, 252 + k * 62, 68, f"spk {k + 1}", 50, 10.0)
    for r, (key, title) in enumerate(ROWS):
        py = 84 + r * 52
        label(p, 16, py + 6, title, 120, 10.0)
        p.add("meter~", 1500, 100 + r * 40, 100, 14, None, 1, 1, ["float"], [16, py + 26, 110, 10])
        meter = p.boxes[-1]["box"]["id"]
        p.wire(p.obj(1500, 70 + r * 40, f"receive~ mix_{key}", 0, 1, ["signal"]), 0, meter)
        for k in range(3):
            cell(key, f"S{k + 1}", 1700 + k * 80, 100 + r * 120, 246 + k * 62, py, DEFAULT_OUT[key][k], "out")

    # sends grid
    section(p, "fx", "SENDS GRID · into the reverb and delay", 458, 40, 300, 330)
    label(p, 466, 342, "(the strips' own reverb / delay dials\nare off in this version; WASH / ECHO still add)", 290, 9.0)
    for k, col in enumerate(("REV", "DLY")):
        label(p, 622 + k * 62, 68, col.lower(), 50, 10.0)
    for r, key in enumerate(SEND_ROWS):
        py = 84 + r * 52
        label(p, 466, py + 6, dict(ROWS)[key], 140, 10.0)
        for k, col in enumerate(("REV", "DLY")):
            cell(key, col, 2100 + k * 80, 100 + r * 120, 616 + k * 62, py, DEFAULT_SEND[key][k], "send")

    # speakers: meters and output choice
    section(p, "room", "SPEAKERS", 458, 380, 300, 150)
    for k in range(3):
        py = 412 + k * 36
        label(p, 466, py + 2, f"speaker {k + 1}", 70, 10.0)
        p.add("meter~", 2500, 100 + k * 40, 100, 14, None, 1, 1, ["float"], [540, py + 6, 120, 10])
        meter = p.boxes[-1]["box"]["id"]
        p.wire(p.obj(2500, 70 + k * 40, f"receive~ mix_S{k + 1}", 0, 1, ["signal"]), 0, meter)
        menu = p.umenu(2700, 100 + k * 40, [str(i) for i in range(1, 17)], 50, pres=[670, py, 50, 22])
        p.wire(p.obj(2700, 70 + k * 40, f"loadmess {k}"), 0, menu)
        plus = p.obj(2800, 100 + k * 40, "+ 1")
        p.wire(menu, 0, plus); p.wire(plus, 0, p.obj(2800, 130 + k * 40, f"s mix_out_{k + 1}", 1, 0))
    label(p, 670, 386, "output", 60, 9.0)
    reset_b = p.button(2900, 100, 22, pres=[466, 540, 22, 22])
    label(p, 492, 542, "reset to the standard routing", 200, 10.0)
    reset_m = p.msg(2900, 130, "reset")
    p.wire(reset_b, 0, reset_m); p.wire(reset_m, 0, to_mixer)

    # source and phrase
    section(p, "chain", "SOURCE · PHRASE", 768, 40, 424, 330)
    src_name = p.msg(3100, 100, "no source yet", 400, pres=[776, 72, 408, 22], fontsize=10.0)
    p.wire(p.obj(3100, 40, "r mix_source", 0, 1), 0, p.obj(3100, 70, "prepend set")); p.wire(p.boxes[-1]["box"]["id"], 0, src_name)
    wave = p.add("waveform~", 3100, 140, 400, 120, None, 5, 6, ["float", "float", "float", "float", "list", ""],
                 [776, 102, 408, 150])
    set_wave = p.msg(3300, 40, "set relay_source")
    p.wire(p.obj(3300, 10, "r relay_source_loaded", 0, 1), 0, set_wave)
    p.wire(wake, 0, set_wave); p.wire(set_wave, 0, wave)
    label(p, 776, 260, "phrase:", 60, 10.0)
    status = p.msg(3100, 300, "ready: NEW SOURCE", 400, pres=[776, 280, 408, 22], fontsize=10.0)
    p.wire(p.obj(3100, 270, "r mix_status", 0, 1), 0, status)
    return p


def build_relay():
    p = Patch()
    PW, PH = 1400, 800
    p.panel(0, 0, PW, PH, BG, pres=[0, 0, PW, PH], rounded=0)
    LX = 1600

    # ---------------------------------------------------------------- title
    p.comment(0, 0, "AIMAT RELAY · CLOUDS · MIX", 300, 22.0, bold=True, pres=[12, 6, 300, 30])
    label(p, 420, 14, "one phrase, three clouds: when your panel is green it's yours, until you PASS", 560, 11.0)
    panic = p.button(0, 0, 30, pres=[1300, 6, 30, 30], blinkcolor=[1, 0.2, 0.2, 1])
    label(p, 1334, 12, "PANIC", 60, 12.0)
    p.wire(panic, 0, p.obj(40, 0, "s chain_panic", 1, 0))

    # ---------------------------------------------------------------- AIMAT I/O + engine
    p.comment(LX, 10, "AIMAT connection", 200, 14.0, bold=True)
    p.wire(p.obj(LX, 40, "r aimat_send", 0, 1), 0, p.obj(LX, 70, "udpsend 127.0.0.1 5005", 1, 0))
    udp = p.obj(LX, 120, "udpreceive 7400", 1, 1)
    p.wire(udp, 0, p.obj(LX + 150, 120, "print aimat", 1, 0))
    route = p.obj(LX, 150, "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done /phrase_profile",
                  7, 7, w=620)
    p.wire(udp, 0, route)
    engine = p.obj(LX, 440, "js chain_relay_clouds.js", 1, 5, w=170)
    p.wire(engine, 0, p.obj(LX, 480, "s aimat_send", 1, 0))
    to_voice = p.obj(LX + 180, 480, "route 1 2 3", 4, 4)
    p.wire(engine, 1, to_voice)
    prof = p.obj(LX + 130, 260, "prepend profile")
    p.wire(route, 5, prof); p.wire(prof, 0, engine)
    status_pre = p.obj(LX + 260, 260, "prepend aimat")
    p.wire(route, 3, status_pre); p.wire(status_pre, 0, engine)
    p.wire(p.obj(LX + 400, 410, "loadmess reset"), 0, engine)

    # ---------------------------------------------------------------- MACHINE (the source and the relay)
    mx, my, mw = 700, 44, 692
    section(p, "chain", "MACHINE · the source and the relay", mx, my, mw, 258)
    src_btn = p.live_button(LX, 700, "new_source", 36, [mx + 12, my + 32, 36, 36])
    label(p, mx + 52, my + 34, "NEW\nSOURCE", 70, 11.0)
    model = p.umenu(LX, 740, ["pipes", "misc", "techno"], 80, pres=[mx + 126, my + 38, 80, 22])
    p.wire(p.obj(LX + 100, 740, "loadmess 0"), 0, model)
    trunc = p.dial(LX, 820, "truncation", 0.1, 4.0, 1.0, 1, pres=[mx + 216, my + 30, 44, 48], label="wildness")
    secs = p.number(LX + 60, 820, 44, pres=[mx + 268, my + 40, 44, 22])
    p.wire(p.obj(LX + 60, 790, "loadmess 20"), 0, secs)
    label(p, mx + 268, my + 62, "seconds", 50, 9.0)
    density = p.dial(LX + 120, 820, "density", 0, 1, 0.5, 1, pres=[mx + 322, my + 30, 44, 48])
    label(p, mx + 370, my + 32, "density:\nnotes heard\n(techno\nneeds more)", 64, 9.0)
    p.wire(density, 0, p.obj(LX + 120, 880, "prepend density"), 0)
    p.wire(p.boxes[-1]["box"]["id"], 0, engine)

    once = p.obj(LX - 60, 900, "t b", 1, 1, ["bang"])
    pk = p.obj(LX, 930, "pack musika 1. 20 pipes", 4, 1, w=190)
    trig = p.obj(LX, 960, "prepend /trigger_model")
    p.wire(src_btn, 0, once); p.wire(once, 0, pk); p.wire(pk, 0, trig)
    p.wire(trig, 0, p.obj(LX, 990, "s aimat_send", 1, 0))
    p.wire(trunc, 0, pk, 1); p.wire(secs, 0, pk, 2)
    to_sym = p.obj(LX + 200, 900, "prepend symbol")
    p.wire(model, 1, to_sym); p.wire(to_sym, 0, pk, 3)

    # source audio: the grains read it; it can also loop in the room as a bed
    sx0, sy0 = 2400, 40
    entry = p.obj(sx0, sy0, "t b b s", 1, 3, ["bang", "bang", ""])
    replace = p.obj(sx0 + 150, sy0 + 30, "prepend replace")
    buffer = p.obj(sx0 + 150, sy0 + 58, "buffer~ relay_source", 1, 2, ["float", "bang"])
    normalize = p.msg(sx0 + 290, sy0 + 30, "normalize 0.9")
    startloop = p.msg(sx0, sy0 + 30, "startloop")
    p.wire(entry, 2, replace); p.wire(replace, 0, buffer)
    p.wire(entry, 1, normalize); p.wire(normalize, 0, buffer)
    p.wire(buffer, 1, p.obj(sx0 + 150, sy0 + 90, "s relay_source_loaded", 1, 0))
    p.wire(entry, 0, startloop)
    loop1 = p.msg(sx0 + 290, sy0 + 86, "loop 1")
    p.wire(p.obj(sx0 + 290, sy0 + 58, "loadbang", 1, 1, ["bang"]), 0, loop1)
    groove = p.obj(sx0, sy0 + 160, "groove~ relay_source 2", 3, 3, ["signal"] * 3, w=180)
    p.wire(startloop, 0, groove); p.wire(loop1, 0, groove)
    src_pre = p.obj(LX, 290, "prepend source")
    p.wire(route, 0, entry); p.wire(route, 0, src_pre); p.wire(src_pre, 0, engine)

    # source bed on/off (fades over 2 s), then source speed controls
    bed = p.toggle(sx0 + 400, sy0 + 160, 22, pres=[mx + 450, my + 32, 22, 22])
    label(p, mx + 476, my + 34, "source bed in the room", 140, 10.0)
    p.wire(p.obj(sx0 + 400, sy0 + 130, "loadmess 0"), 0, bed)
    bed_in = p.obj(sx0 + 400, sy0 + 190, "pack 0. 2000", 2, 1)
    bed_ramp = p.obj(sx0 + 400, sy0 + 220, "line~", 2, 2, ["signal", "bang"])
    p.wire(bed, 0, bed_in); p.wire(bed_in, 0, bed_ramp)
    src_l = p.obj(sx0, sy0 + 310, "*~", 2, 1, ["signal"])
    src_r = p.obj(sx0 + 65, sy0 + 310, "*~", 2, 1, ["signal"])
    p.wire(groove, 0, src_l); p.wire(groove, 1, src_r)
    p.wire(bed_ramp, 0, src_l, 1); p.wire(bed_ramp, 0, src_r, 1)

    px, py, x0, y0 = mx + 12, my + 96, 2900, 420
    label(p, px, py + 2, "BED\nSPEED", 50, 9.0)
    slider = p.add("slider", x0, y0, 170, 20, None, 1, 1, [""], [px + 52, py, 170, 20],
                   floatoutput=1, size=4.0, min=-2.0, parameter_enable=0)
    speed = p.add("flonum", x0 + 180, y0, 56, 22, None, 1, 2, ["", "bang"], [px + 228, py - 1, 56, 22],
                  format=6, parameter_enable=0, minimum=-4.0, maximum=4.0)
    sig = p.obj(x0 + 180, y0 + 60, "sig~ 1.", 1, 1, ["signal"])
    p.wire(slider, 0, speed); p.wire(speed, 0, sig); p.wire(sig, 0, groove)
    p.wire(p.obj(x0 + 180, y0 - 30, "loadmess 1."), 0, speed)
    show = p.obj(x0, y0 + 60, "prepend set")
    p.wire(speed, 0, show); p.wire(show, 0, slider)
    for i, value in enumerate(("0.25", "0.5", "1", "2", "-1")):
        m = p.msg(x0 + i * 45, y0 + 30, value, w=40, pres=[px + 52 + i * 46, py + 26, 42, 22])
        p.wire(m, 0, speed)

    # relay controls
    auto = p.toggle(LX + 480, 520, 22, pres=[mx + 12, my + 156, 22, 22])
    p.wire(p.obj(LX + 480, 490, "loadmess 0"), 0, auto)
    label(p, mx + 38, my + 158, "auto-pass every 25 s (practising alone)", 220, 10.0)
    p.wire(auto, 0, p.obj(LX + 480, 580, "prepend autopass"), 0)
    p.wire(p.boxes[-1]["box"]["id"], 0, engine)
    reset = p.button(LX + 560, 520, 22, pres=[mx + 262, my + 156, 22, 22])
    label(p, mx + 288, my + 158, "reset relay", 80, 10.0)
    reset_m = p.msg(LX + 560, 550, "reset")
    p.wire(reset, 0, reset_m); p.wire(reset_m, 0, engine)
    ddsp_n = p.number(LX + 600, 520, 36, pres=[mx + 12, my + 184, 36, 22])
    p.wire(p.obj(LX + 600, 490, "loadmess 0"), 0, ddsp_n)
    label(p, mx + 52, my + 186, "MIDI-DDSP every n gens (0 = off)", 200, 10.0)
    p.wire(ddsp_n, 0, p.obj(LX + 600, 580, "prepend ddsp_every"), 0)
    p.wire(p.boxes[-1]["box"]["id"], 0, engine)
    floor = p.dial(LX + 700, 520, "floor", 0.0, 0.5, 0.15, 1, pres=[mx + 450, my + 196, 44, 48], label="floor")
    label(p, mx + 498, my + 204, "floor: how loud a cloud\nstays after its PASS", 130, 9.0)
    p.wire(floor, 0, p.obj(LX + 700, 580, "s chain_floor", 1, 0))
    gen = p.number(LX + 300, 640, 64, pres=[mx + 350, my + 120, 64, 34], fontsize=22.0)
    label(p, mx + 350, my + 156, "generation", 70, 10.0)
    p.wire(engine, 3, gen)
    relay_status = p.msg(LX + 400, 640, "ready: NEW SOURCE", 416, pres=[mx + 12, my + 210, 430, 22])
    p.wire(engine, 2, relay_status)
    relay_status_out = engine
    aimat_status = p.msg(LX, 200, "waiting…", 344, pres=[mx + 12, my + 234, 430, 20], fontsize=10.0)
    st = p.obj(LX + 400, 200, "prepend set")
    p.wire(route, 3, st); p.wire(st, 0, aimat_status)

    # effects: plug-in slots and macros
    fx = mx + 450
    label(p, fx, my + 60, "EFFECTS (plug-ins, 100% wet)", 240, 10.0)
    reverb = p.obj(5800, 300, "vst~ 2 2 @autosave 1", 2, 8, ["signal", "signal", "", "", "", "", "", ""], w=160)
    delay = p.obj(6100, 300, "vst~ 2 2 @autosave 1", 2, 8, ["signal", "signal", "", "", "", "", "", ""], w=160)
    for i, (plug_target, word) in enumerate(((reverb, "reverb"), (delay, "delay"))):
        lx = fx + i * 116
        b1 = p.button(5800 + i * 300, 260, 22, pres=[lx, my + 78, 22, 22])
        label(p, lx + 26, my + 80, f"load {word}", 90, 10.0)
        b2 = p.button(5840 + i * 300, 260, 22, pres=[lx, my + 104, 22, 22])
        label(p, lx + 26, my + 106, f"show {word}", 90, 10.0)
        m1 = p.msg(5800 + i * 300, 230, "plug"); m2 = p.msg(5850 + i * 300, 230, "open")
        p.wire(b1, 0, m1); p.wire(m1, 0, plug_target); p.wire(b2, 0, m2); p.wire(m2, 0, plug_target)
    to_rev = p.dial(6600, 200, "delay_to_reverb", 0.0, 1.0, 0.3, 1, pres=[fx, my + 134, 44, 48], label="dly→rev")
    wash = p.dial(6660, 200, "wash", 0.0, 1.0, 0.0, 1, pres=[fx + 52, my + 134, 44, 48], label="WASH")
    echo = p.dial(6720, 200, "echo", 0.0, 1.0, 0.0, 1, pres=[fx + 104, my + 134, 44, 48], label="ECHO")
    label(p, fx + 156, my + 138, "WASH / ECHO add\nreverb / delay to\neverything", 100, 9.0)
    p.wire(wash, 0, p.obj(6660, 260, "s chain_wash", 1, 0))
    p.wire(echo, 0, p.obj(6720, 260, "s chain_echo", 1, 0))

    # MIDI-DDSP renders loop in the room
    DX = 5400
    d_t = p.obj(DX, 40, "t b s", 1, 2, ["bang", ""])
    d_rep = p.obj(DX + 60, 70, "prepend replace")
    d_buf = p.obj(DX + 60, 98, "buffer~ relay_ddsp", 1, 2, ["float", "bang"])
    d_start = p.msg(DX, 70, "startloop")
    d_loop = p.msg(DX + 200, 70, "loop 1")
    p.wire(p.obj(DX + 200, 40, "loadbang", 1, 1, ["bang"]), 0, d_loop)
    d_groove = p.obj(DX, 130, "groove~ relay_ddsp 1", 3, 2, ["signal", "signal"], w=150)
    p.wire(p.obj(DX + 170, 100, "sig~ 1.", 1, 1, ["signal"]), 0, d_groove)
    p.wire(route, 2, d_t); p.wire(d_t, 1, d_rep); p.wire(d_rep, 0, d_buf)
    p.wire(d_t, 0, d_start); p.wire(d_start, 0, d_groove); p.wire(d_loop, 0, d_groove)
    d_done = p.msg(DX + 100, 40, "ddsp_done")
    p.wire(d_t, 0, d_done); p.wire(d_done, 0, engine)

    # ---------------------------------------------------------------- PLAYERS
    player_strips, speaker_meters = [], []
    for k in (1, 2, 3):
        cx = 8 + (k - 1) * 228
        name, size0, spray0, ring0 = CHARACTERS[k - 1]
        section(p, "player", f"PLAYER {k} · {name}", cx, 44, 220, 600)
        X0 = 3700 + (k - 1) * 520
        turn_panel = p.panel(X0 + 460, 10, 60, 40, [0.96, 0.96, 0.95, 1.0], pres=[cx, 44 + 24, 220, 190], rounded=0)
        is_mine = p.obj(X0 + 400, 10, f"== {k}", 2, 1)
        p.wire(engine, 4, is_mine)
        light = p.add("led", X0 + 400, 40, 40, 40, None, 1, 1, ["int"], [cx + 174, 44 + 32, 36, 36],
                      oncolor=[0.2, 0.95, 0.35, 1.0], parameter_enable=0, ignoreclick=1)
        p.wire(is_mine, 0, light)
        pick = p.obj(X0 + 460, 60, "sel 1 0", 1, 3, ["bang", "bang", ""])
        on = p.msg(X0 + 460, 90, TURN_ON)
        off = p.msg(X0 + 460, 120, TURN_OFF)
        p.wire(is_mine, 0, pick); p.wire(pick, 0, on); p.wire(pick, 1, off)
        p.wire(on, 0, turn_panel); p.wire(off, 0, turn_panel)
        label(p, cx + 166, 44 + 70, "your turn", 52, 9.0)
        pass_btn = p.live_button(X0 + 300, 40, f"pass_{k}", 50, [cx + 12, 44 + 32, 50, 50])
        label(p, cx + 22, 44 + 84, "PASS", 40, 10.0)
        pass_t = p.obj(X0 + 300, 100, "t b", 1, 1, ["bang"])
        pass_m = p.msg(X0 + 300, 130, f"pass {k}")
        p.wire(pass_btn, 0, pass_t); p.wire(pass_t, 0, pass_m); p.wire(pass_m, 0, engine)
        twist = p.dial(X0 + 360, 100, f"twist_{k}", 0, 1, 0.3, 1, pres=[cx + 74, 44 + 32, 44, 48], label="twist")
        tw_pre = p.obj(X0 + 360, 160, f"prepend twist {k}")
        p.wire(twist, 0, tw_pre); p.wire(tw_pre, 0, engine)

        voice = p.obj(X0, 560, f"chain_voice {name}", 1, 2, ["signal", "signal"], w=160)
        p.wire(to_voice, k - 1, voice)
        knobs = (("size", 20.0, 2000.0, size0, 2), ("spray", 0.0, 1.0, spray0, 1),
                 ("pitch", -24.0, 24.0, 0.0, 1), ("ring", 0.0, 1.0, ring0, 1))
        for i, (key, lo, hi, init, unit) in enumerate(knobs):
            d = p.dial(X0 + 200 + i * 60, 460, f"{key}_{k}", lo, hi, init, unit,
                       pres=[cx + 12 + i * 48, 44 + 104, 44, 48], label=key)
            pre = p.obj(X0 + 200 + i * 60, 520, f"prepend {key}")
            p.wire(d, 0, pre); p.wire(pre, 0, voice)
        steps = p.toggle(X0 + 460, 460, 20, pres=[cx + 12, 44 + 158, 20, 20])
        label(p, cx + 36, 44 + 159, "pitch in steps (octaves, fifths)", 180, 9.0)
        p.wire(p.obj(X0 + 460, 430, "loadmess 0"), 0, steps)
        steps_pre = p.obj(X0 + 460, 520, "prepend steps")
        p.wire(steps, 0, steps_pre); p.wire(steps_pre, 0, voice)

        strip = p.add("bpatcher", 7000 + (k - 1) * 170, 40, 150, 370, None, 2, 6, ["signal"] * 6,
                      pres=[cx + 35, 220, 150, 370], name="chain_strip.maxpat", args=[f"VOICE{k}"],
                      bgmode=0, border=0, clickthrough=0, enablehscroll=0, enablevscroll=0,
                      lockeddragscroll=0, offset=[0.0, 0.0], viewvisibility=1)
        p.wire(voice, 0, strip, 0); p.wire(voice, 1, strip, 1)
        player_strips.append(strip)
        meter = p.add("meter~", 8000 + (k - 1) * 60, 700, 150, 14, None, 1, 1, ["float"], [cx + 35, 600, 150, 14])
        label(p, cx + 35, 616, f"speaker {k}", 80, 9.0)
        speaker_meters.append(meter)

    # ---------------------------------------------------------------- ROOM: source bed, DDSP, reverb, delay
    rx, ry = 700, 306
    section(p, "room", "ROOM · spread across the speakers (L · middle · R)", rx, ry, 692, 400)
    room_strips = []
    for i, name in enumerate(("SOURCE", "DDSP", "REVERB", "DELAY")):
        is_return = name in ("REVERB", "DELAY")
        s = p.add("bpatcher", 7600 + i * 170, 40, 150, 370, None, 2, 2 if is_return else 6,
                  ["signal"] * (2 if is_return else 6), pres=[rx + 12 + i * 158, ry + 28, 150, 370],
                  name="chain_return.maxpat" if is_return else "chain_strip.maxpat", args=[name],
                  bgmode=0, border=0, clickthrough=0, enablehscroll=0, enablevscroll=0,
                  lockeddragscroll=0, offset=[0.0, 0.0], viewvisibility=1)
        room_strips.append(s)
    src_strip, ddsp_strip, rev_strip, dly_strip = room_strips
    p.wire(src_l, 0, src_strip, 0); p.wire(src_r, 0, src_strip, 1)
    p.wire(d_groove, 0, ddsp_strip, 0); p.wire(d_groove, 0, ddsp_strip, 1)
    p.wire(reverb, 0, rev_strip, 0); p.wire(reverb, 1, rev_strip, 1)
    p.wire(delay, 0, dly_strip, 0); p.wire(delay, 1, dly_strip, 1)
    # sends: set in the MIXER's sends grid (the strips' own send dials aren't connected in this version)
    mixer_js = p.obj(6300, 500, "js chain_mixer.js", 1, 2, w=130)
    p.wire(p.obj(6300, 470, "r chain_mix", 0, 1), 0, mixer_js)
    for word, x in (("wash", 6450), ("echo", 6560)):
        rcv = p.obj(x, 440, f"r chain_{word}", 0, 1)
        pre = p.obj(x, 470, f"prepend {word}")
        p.wire(rcv, 0, pre); p.wire(pre, 0, mixer_js)
    send_sources = player_strips + [ddsp_strip, src_strip]          # rows V1 V2 V3 DDSP BED
    for side in (0, 1):
        sends_m = p.obj(6300 + side * 260, 560, "matrix~ 5 2 0. @ramp 30", 5, 3, ["signal", "signal", "list"], w=180)
        p.wire(mixer_js, 1, sends_m)
        for i, s in enumerate(send_sources):
            p.wire(s, side, sends_m, i)
        p.wire(sends_m, 0, reverb, side); p.wire(sends_m, 1, delay, side)
    # delay → reverb straight from the plug-in, so solo and the DELAY strip don't cut it
    dr_l = p.obj(6600, 300, "*~ 0.3", 2, 1, ["signal"])
    dr_r = p.obj(6660, 300, "*~ 0.3", 2, 1, ["signal"])
    p.wire(delay, 0, dr_l); p.wire(delay, 1, dr_r)
    p.wire(to_rev, 0, dr_l, 1); p.wire(to_rev, 0, dr_r, 1)
    p.wire(dr_l, 0, reverb, 0); p.wire(dr_r, 0, reverb, 1)

    # ---------------------------------------------------------------- OUTPUT: one speaker per player
    ox, oy = 700, 712
    section(p, "out", "OUTPUT", ox, oy, 692, 84)
    OX = 9000
    master = p.dial(OX, 40, "master", -70.0, 6.0, -6.0, 4, pres=[ox + 12, oy + 28, 44, 48], label="master")
    room = p.dial(OX + 60, 40, "room", -70.0, 6.0, -6.0, 4, pres=[ox + 64, oy + 28, 44, 48], label="room")

    def db_ramp(dial, x, init_db):
        amp = p.obj(x, 100, "dbtoa")
        ramp_in = p.obj(x, 130, "pack 0. 30", 2, 1)
        ramp = p.obj(x, 160, "line~", 2, 2, ["signal", "bang"])
        p.wire(dial, 0, amp); p.wire(amp, 0, ramp_in); p.wire(ramp_in, 0, ramp)
        p.wire(p.obj(x + 60, 70, f"loadmess {init_db}"), 0, amp)
        return ramp
    master_gain = db_ramp(master, OX, -6)
    room_gain = db_ramp(room, OX + 140, -6)

    # room bus (stereo), scaled by the room level; speaker 1 gets L, 2 the middle, 3 R
    room_l = p.obj(OX + 280, 200, "*~", 2, 1, ["signal"])
    room_r = p.obj(OX + 340, 200, "*~", 2, 1, ["signal"])
    for s in room_strips:
        p.wire(s, 0, room_l, 0); p.wire(s, 1, room_r, 0)
    p.wire(room_gain, 0, room_l, 1); p.wire(room_gain, 0, room_r, 1)
    room_sum = p.obj(OX + 280, 230, "+~", 2, 1, ["signal"])
    p.wire(room_l, 0, room_sum, 0); p.wire(room_r, 0, room_sum, 1)
    room_mid = p.obj(OX + 280, 260, "*~ 0.5", 2, 1, ["signal"])
    p.wire(room_sum, 0, room_mid)
    room_parts = [room_l, room_mid, room_r]

    # STOP ALL AUDIO (Esc): fade everything; it keeps running underneath
    stop_all = p.toggle(OX + 600, 40, 30, pres=[1150, 6, 30, 30])
    label(p, 1184, 8, "STOP ALL AUDIO\n(Esc)", 110, 11.0)
    p.wire(p.obj(OX + 600, 10, "loadmess 0"), 0, stop_all)
    key = p.obj(OX + 660, 10, "key", 0, 4, ["int", "int", "int", "int"])
    esc = p.obj(OX + 660, 40, "sel 27", 2, 2, ["bang", ""])
    p.wire(key, 0, esc); p.wire(esc, 0, stop_all)
    audible = p.obj(OX + 600, 80, "== 0", 2, 1)
    fade_in = p.obj(OX + 600, 110, "pack 0. 50", 2, 1)
    p.wire(p.obj(OX + 700, 80, "loadmess 1."), 0, fade_in)
    fade = p.obj(OX + 600, 140, "line~", 2, 2, ["signal", "bang"])
    p.wire(stop_all, 0, audible); p.wire(audible, 0, fade_in); p.wire(fade_in, 0, fade)

    # headphones mode: everything to 1/2 as a stereo mix; speakers off
    phones = p.toggle(OX + 800, 40, 22, pres=[ox + 120, oy + 30, 22, 22])
    label(p, ox + 146, oy + 32, "headphones mode\n(all to outs 1/2)", 110, 9.0)
    p.wire(p.obj(OX + 800, 10, "loadmess 0"), 0, phones)
    spk_on = p.obj(OX + 800, 80, "== 0", 2, 1)
    spk_ramp_in = p.obj(OX + 800, 110, "pack 0. 30", 2, 1)
    spk_ramp = p.obj(OX + 800, 140, "line~", 2, 2, ["signal", "bang"])
    p.wire(p.obj(OX + 900, 80, "loadmess 1."), 0, spk_ramp_in)
    hp_ramp_in = p.obj(OX + 860, 110, "pack 0. 30", 2, 1)
    hp_ramp = p.obj(OX + 860, 140, "line~", 2, 2, ["signal", "bang"])
    p.wire(phones, 0, spk_on); p.wire(spk_on, 0, spk_ramp_in); p.wire(spk_ramp_in, 0, spk_ramp)
    p.wire(phones, 0, hp_ramp_in); p.wire(hp_ramp_in, 0, hp_ramp)

    def finish_from(src, outlet_n, x):
        """finish() for outlet `outlet_n` of a multi-outlet source (the output matrix)."""
        tap = p.obj(x, 270, "+~ 0.", 2, 1, ["signal"])
        p.wire(src, outlet_n, tap)
        return finish(tap, x, spk_ramp)

    def finish(src, x, mode_ramp):
        """master level → soft limit → STOP ALL fade → speaker/headphone mode"""
        lvl = p.obj(x, 300, "*~", 2, 1, ["signal"])
        sat = p.obj(x, 330, "tanh~", 1, 1, ["signal"])
        cut = p.obj(x, 360, "*~", 2, 1, ["signal"])
        mode = p.obj(x, 390, "*~", 2, 1, ["signal"])
        p.wire(src, 0, lvl); p.wire(master_gain, 0, lvl, 1); p.wire(lvl, 0, sat); p.wire(sat, 0, cut)
        p.wire(fade, 0, cut, 1); p.wire(cut, 0, mode); p.wire(mode_ramp, 0, mode, 1)
        return cut, mode

    # the output matrix: rows V1 V2 V3 REVL REVR DLYL DLYR DDSP BED → speakers 1 2 3 (MIXER output grid)
    out_m = p.obj(OX + 1000, 200, "matrix~ 9 3 0. @ramp 30", 9, 4, ["signal", "signal", "signal", "list"], w=200)
    p.wire(mixer_js, 0, out_m)

    def mono_of(strip, x, scaled):
        """(L + R) / 2 of a strip, times the room level if `scaled`."""
        both = p.obj(x, 100, "+~", 2, 1, ["signal"])
        half = p.obj(x, 130, "*~ 0.5", 2, 1, ["signal"])
        p.wire(strip, 0, both, 0); p.wire(strip, 1, both, 1); p.wire(both, 0, half)
        if not scaled:
            return half
        sc = p.obj(x, 160, "*~", 2, 1, ["signal"])
        p.wire(half, 0, sc, 0); p.wire(room_gain, 0, sc, 1)
        return sc

    def room_side(strip, side, x):
        """One side of an effect return, times the room level."""
        sc = p.obj(x, 160, "*~", 2, 1, ["signal"])
        p.wire(strip, side, sc, 0); p.wire(room_gain, 0, sc, 1)
        return sc

    rows = [mono_of(s, OX + 2000 + i * 60, False) for i, s in enumerate(player_strips)]
    rows += [room_side(rev_strip, 0, OX + 2200), room_side(rev_strip, 1, OX + 2260),
             room_side(dly_strip, 0, OX + 2320), room_side(dly_strip, 1, OX + 2380),
             mono_of(ddsp_strip, OX + 2440, True), mono_of(src_strip, OX + 2500, True)]
    for i, (sig, (key, _)) in enumerate(zip(rows, ROWS)):
        p.wire(sig, 0, out_m, i)
        p.wire(sig, 0, p.obj(OX + 2000 + i * 60, 200, f"send~ mix_{key}", 1, 0))
    speakers = []
    for k in range(3):
        x = OX + 1000 + k * 120
        pre_mode, out = finish(out_m, x, spk_ramp) if k == 0 else finish_from(out_m, k, x)
        p.wire(pre_mode, 0, speaker_meters[k])
        p.wire(pre_mode, 0, p.obj(x, 420, f"send~ mix_S{k + 1}", 1, 0))
        speakers.append(out)
    spk_dac = p.obj(OX + 1000, 460, "dac~ 1 2 3", 3, 0, w=120)
    for k, out in enumerate(speakers):
        p.wire(out, 0, spk_dac, k)
    label(p, ox + 268, oy + 26, "speaker outputs\nfor players 1 · 2 · 3", 110, 9.0)
    outs = []
    for k in range(3):
        nb = p.number(OX + 1000 + k * 50, 420, 36, pres=[ox + 380 + k * 40, oy + 32, 36, 22])
        p.wire(p.obj(OX + 1000 + k * 50, 390, f"loadmess {k + 1}"), 0, nb)
        p.wire(p.obj(OX + 1000 + k * 50, 360, f"r mix_out_{k + 1}", 0, 1), 0, nb)
        outs.append(nb)
    chans = p.obj(OX + 1000, 445, "pak 1 2 3", 3, 1)
    for k, nb in enumerate(outs):
        p.wire(nb, 0, chans, k)
    set_m = p.obj(OX + 1150, 445, "prepend set")
    p.wire(chans, 0, set_m); p.wire(set_m, 0, spk_dac)

    # headphone mix: every voice and the room in stereo (also what gets recorded)
    hp_l = p.obj(OX + 1400, 200, "+~", 2, 1, ["signal"])
    hp_r = p.obj(OX + 1460, 200, "+~", 2, 1, ["signal"])
    for strip in player_strips:
        p.wire(strip, 0, hp_l, 0); p.wire(strip, 1, hp_r, 0)
    p.wire(room_l, 0, hp_l, 1); p.wire(room_r, 0, hp_r, 1)
    rec_l, hp_out_l = finish(hp_l, OX + 1400, hp_ramp)
    rec_r, hp_out_r = finish(hp_r, OX + 1460, hp_ramp)
    hp_dac = p.obj(OX + 1400, 460, "dac~ 1 2", 2, 0)
    p.wire(hp_out_l, 0, hp_dac, 0); p.wire(hp_out_r, 0, hp_dac, 1)

    dac_btn = p.ezdac(OX + 1600, 300, pres=[ox + 512, oy + 22, 45, 45])
    label(p, ox + 506, oy + 66, "audio on/off", 70, 9.0)
    rec = p.obj(OX + 1600, 400, "sfrecord~ 2", 2, 1, ["signal"])
    p.wire(rec_l, 0, rec, 0); p.wire(rec_r, 0, rec, 1)
    rec_file = p.button(OX + 1600, 360, 22, pres=[ox + 590, oy + 28, 22, 22])
    label(p, ox + 616, oy + 30, "rec file", 60, 9.0)
    rec_open = p.msg(OX + 1600, 330, "open")
    p.wire(rec_file, 0, rec_open); p.wire(rec_open, 0, rec)
    rec_on = p.toggle(OX + 1640, 360, 22, pres=[ox + 590, oy + 54, 22, 22])
    label(p, ox + 616, oy + 56, "REC", 40, 10.0)
    p.wire(rec_on, 0, rec)

    mix_btn = p.button(9900, 40, 30, pres=[1000, 6, 30, 30])
    label(p, 1034, 12, "MIXER", 60, 12.0)
    opener = p.msg(9900, 80, "open")
    pc = p.obj(9900, 110, "pcontrol", 1, 1)
    mixer_window = p.add("newobj", 9900, 140, 80, 22.0, "p mixer", 1, 0, None, None,
                         patcher=as_subpatcher(build_mixer(), [60.0, 80.0, 1260.0, 660.0]))
    p.wire(mix_btn, 0, opener); p.wire(opener, 0, pc); p.wire(pc, 0, mixer_window)
    p.wire(relay_status_out, 2, p.obj(9900, 200, "s mix_status", 1, 0))
    p.wire(route, 0, p.obj(9900, 230, "s mix_source", 1, 0))

    soloist = p.obj(8300, 440, "js chain_solo.js", 1, 0, w=120)
    p.wire(p.obj(8300, 410, "r chain_solo", 0, 1), 0, soloist)

    wake = p.obj(8800, 400, "loadbang", 1, 1, ["bang"])
    for b in p.boxes:
        if b["box"]["maxclass"] == "live.dial":
            p.wire(wake, 0, b["box"]["id"])
    return p


if __name__ == "__main__":
    out = Path(sys.argv[1])
    b, c = build_relay().save(out / "aimat_relay_clouds_mix.maxpat", [20.0, 40.0, 1410.0, 840.0])
    print(f"aimat_relay_clouds_mix.maxpat: {b} boxes, {c} cords")
