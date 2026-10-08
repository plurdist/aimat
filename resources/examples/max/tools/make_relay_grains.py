"""
Builds aimat_relay_grains.maxpat (and its grain engine chain_grains.maxpat): the relay, but each
player is an ambient granular voice reading the Musika source. The generations decide the grains:
note number = where in the source, note on/off = swell and fade, velocity = level. Pitch is ignored.
Reuses the channel strips chain_strip.maxpat / chain_return.maxpat.

Usage (from resources/examples/max): python3 tools/make_relay_grains.py .
"""
import sys
from pathlib import Path

from maxpatch import ACCENTS, BG, FEEDBACK_MID, SECTION, Patch, label, section



# name, grain size (ms), spray (0-1), tail (ms): must match chain_grains.js
CHARACTERS = [("dust", 40.0, 0.6, 800.0), ("drift", 400.0, 0.1, 3000.0), ("glass", 120.0, 0.3, 1500.0)]


def build_grain_engine():
    """chain_grains.maxpat: four overlapping grain streams reading buffer relay_source."""
    p = Patch()
    inlet = p.add("inlet", 20, 10, 30, 30, None, 0, 1, [""], comment="midi + settings", index=1)
    brain = p.obj(20, 60, "js chain_grains.js", 1, 6, w=130)
    p.wire(inlet, 0, brain)
    p.wire(p.obj(200, 20, "loadmess character #1"), 0, brain)
    srclen = p.obj(380, 20, "r relay_srclen", 0, 1)
    p.wire(srclen, 0, p.obj(380, 50, "prepend srclen")); p.wire(p.boxes[-1]["box"]["id"], 0, brain)
    pos = p.obj(20, 120, "line~", 2, 2, ["signal", "bang"])
    amp = p.obj(160, 120, "line~", 2, 2, ["signal", "bang"])
    phase = p.obj(300, 120, "phasor~ 25.", 2, 1, ["signal"])
    span = p.obj(440, 120, "sig~ 40.", 1, 1, ["signal"])
    noise = p.obj(580, 90, "noise~", 1, 1, ["signal"])
    scatter = p.obj(580, 120, "*~ 900.", 2, 1, ["signal"])
    target = p.obj(20, 160, "+~", 2, 1, ["signal"])
    p.wire(brain, 0, pos); p.wire(brain, 1, amp); p.wire(brain, 2, phase); p.wire(brain, 3, span)
    p.wire(noise, 0, scatter); p.wire(brain, 4, scatter, 1)
    p.wire(pos, 0, target, 0); p.wire(scatter, 0, target, 1)
    out_l = p.obj(20, 460, "*~", 2, 1, ["signal"])
    out_r = p.obj(400, 460, "*~", 2, 1, ["signal"])
    p.wire(amp, 0, out_l, 1); p.wire(amp, 0, out_r, 1)
    for k in range(4):
        x = 20 + k * 190
        if k == 0:
            ph = phase
        else:
            off = p.obj(x, 200, f"+~ {k * 0.25}", 2, 1, ["signal"])
            ph = p.obj(x, 228, "wrap~", 1, 1, ["signal"])
            p.wire(phase, 0, off); p.wire(off, 0, ph)
        hold = p.obj(x, 260, "sah~ 0.01", 2, 1, ["signal"])       # a new reading spot at the start of each grain
        inside = p.obj(x, 290, "clip~ 0. 19960.", 3, 1, ["signal"])
        end = p.obj(x + 90, 320, "+~", 2, 1, ["signal"])
        wave = p.obj(x, 350, "wave~ relay_source", 3, 1, ["signal"])
        cosw = p.obj(x + 90, 230, "cos~", 1, 1, ["signal"])
        neg = p.obj(x + 90, 260, "*~ -0.5", 2, 1, ["signal"])
        win = p.obj(x + 90, 290, "+~ 0.5", 2, 1, ["signal"])      # smooth fade in and out (Hann window)
        grain = p.obj(x, 400, "*~", 2, 1, ["signal"])
        p.wire(target, 0, hold, 0); p.wire(ph, 0, hold, 1)
        p.wire(hold, 0, inside); p.wire(brain, 5, inside, 2)
        p.wire(inside, 0, end, 0); p.wire(span, 0, end, 1)
        p.wire(ph, 0, wave, 0); p.wire(inside, 0, wave, 1); p.wire(end, 0, wave, 2)
        p.wire(ph, 0, cosw); p.wire(cosw, 0, neg); p.wire(neg, 0, win)
        p.wire(wave, 0, grain, 0); p.wire(win, 0, grain, 1)
        p.wire(grain, 0, out_l if k % 2 == 0 else out_r, 0)
    for i, src in enumerate((out_l, out_r)):
        p.wire(src, 0, p.add("outlet", 20 + i * 380, 520, 30, 30, None, 1, 0, None, index=i + 1))
    return p


def build_relay():
    p = Patch()
    PW, PH = 1400, 800
    p.panel(0, 0, PW, PH, BG, pres=[0, 0, PW, PH], rounded=0)
    LX = 1600

    # ---------------------------------------------------------------- title
    p.comment(0, 0, "AIMAT RELAY · GRAINS", 300, 22.0, bold=True, pres=[12, 6, 300, 30])
    label(p, 190, 14, "one phrase, three grain clouds: when your light is on it's yours, until you PASS", 560, 11.0)
    panic = p.button(0, 0, 30, pres=[1300, 6, 30, 30], blinkcolor=[1, 0.2, 0.2, 1])
    label(p, 1334, 12, "PANIC", 60, 12.0)
    p.wire(panic, 0, p.obj(40, 0, "s chain_panic", 1, 0))

    # ---------------------------------------------------------------- AIMAT I/O + engine
    p.comment(LX, 10, "AIMAT connection", 200, 14.0, bold=True)
    p.wire(p.obj(LX, 40, "r aimat_send", 0, 1), 0, p.obj(LX, 70, "udpsend 127.0.0.1 5005", 1, 0))
    udp = p.obj(LX, 120, "udpreceive 7400", 1, 1)
    p.wire(udp, 0, p.obj(LX + 150, 120, "print aimat", 1, 0))
    route = p.obj(LX, 150, "route /musika_done /basic_pitch_done /midi_ddsp_done /status /continuator_done",
                  6, 6, w=520)
    p.wire(udp, 0, route)
    engine = p.obj(LX, 440, "js chain_relay.js", 1, 5, w=130)
    p.wire(p.obj(LX + 200, 410, "r chain_to_engine", 0, 1), 0, engine)
    p.wire(p.obj(LX + 340, 410, f"loadmess feedback {FEEDBACK_MID}"), 0, engine)
    p.wire(engine, 0, p.obj(LX, 480, "s aimat_send", 1, 0))
    to_voice = p.obj(LX + 140, 480, "route 1 2 3", 4, 4)
    p.wire(engine, 1, to_voice)
    for addr_outlet, word, x in ((1, "seed", LX), (4, "continued", LX + 130)):
        pre = p.obj(x, 260, f"prepend {word}")
        p.wire(route, addr_outlet, pre); p.wire(pre, 0, engine)
    status_pre = p.obj(LX + 260, 260, "prepend aimat")
    p.wire(route, 3, status_pre); p.wire(status_pre, 0, engine)

    # ---------------------------------------------------------------- MACHINE (P1's extra controls)
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

    src_t = p.obj(LX, 900, "t b b", 1, 2, ["bang", "bang"])
    pk = p.obj(LX, 930, "pack musika 1. 20 pipes", 4, 1, w=190)
    trig = p.obj(LX, 960, "prepend /trigger_model")
    once = p.obj(LX - 60, 900, "t b", 1, 1, ["bang"])
    p.wire(src_btn, 0, once); p.wire(once, 0, src_t)
    p.wire(src_t, 0, pk); p.wire(pk, 0, trig); p.wire(trig, 0, p.obj(LX, 990, "s aimat_send", 1, 0))
    p.wire(trunc, 0, pk, 1); p.wire(secs, 0, pk, 2)
    to_sym = p.obj(LX + 200, 900, "prepend symbol")
    p.wire(model, 1, to_sym); p.wire(to_sym, 0, pk, 3)
    now_len = p.obj(LX + 260, 930, "f 20")
    src_len = p.obj(LX + 260, 960, "f 20")
    p.wire(secs, 0, now_len, 1); p.wire(src_t, 1, now_len); p.wire(now_len, 0, src_len, 1)

    # source audio: loops in the room, and is transcribed to start the relay
    sx0, sy0 = 2400, 40
    entry = p.obj(sx0, sy0, "t b b s", 1, 3, ["bang", "bang", ""])
    replace = p.obj(sx0 + 150, sy0 + 30, "prepend replace")
    buffer = p.obj(sx0 + 150, sy0 + 58, "buffer~ relay_source", 1, 2, ["float", "bang"])
    normalize = p.msg(sx0 + 290, sy0 + 30, "normalize 0.9")
    startloop = p.msg(sx0, sy0 + 30, "startloop")
    to_ms = p.obj(sx0 + 75, sy0 + 58, "* 1000.")
    dur = p.obj(sx0 + 75, sy0 + 86, "prepend duration")
    p.wire(entry, 2, replace); p.wire(replace, 0, buffer)
    p.wire(entry, 1, normalize); p.wire(normalize, 0, buffer)
    p.wire(entry, 1, src_len); p.wire(src_len, 0, to_ms); p.wire(to_ms, 0, dur)
    p.wire(to_ms, 0, p.obj(sx0 + 75, sy0 + 400, "s relay_srclen", 1, 0))
    p.wire(entry, 0, startloop)
    loop1 = p.msg(sx0 + 290, sy0 + 86, "loop 1")
    p.wire(p.obj(sx0 + 290, sy0 + 58, "loadbang", 1, 1, ["bang"]), 0, loop1)
    loopctl = p.obj(sx0 + 75, sy0 + 120, "js chain_loop.js", 1, 4, w=120)
    p.wire(dur, 0, loopctl)
    groove = p.obj(sx0, sy0 + 160, "groove~ relay_source 2", 3, 3, ["signal"] * 3, w=180)
    p.wire(startloop, 0, groove); p.wire(loop1, 0, groove)
    p.wire(loopctl, 0, groove, 1); p.wire(loopctl, 1, groove, 2)
    rise = p.obj(sx0 + 220, sy0 + 190, "*~ 100.", 2, 1, ["signal"])
    flip = p.obj(sx0 + 300, sy0 + 190, "!-~ 1.", 2, 1, ["signal"])
    fall = p.obj(sx0 + 300, sy0 + 218, "*~ 100.", 2, 1, ["signal"])
    env_min = p.obj(sx0 + 220, sy0 + 246, "minimum~", 2, 1, ["signal"])
    env = p.obj(sx0 + 220, sy0 + 274, "clip~ 0. 1.", 3, 1, ["signal"])
    p.wire(groove, 2, rise); p.wire(groove, 2, flip); p.wire(flip, 0, fall)
    p.wire(loopctl, 2, rise, 1); p.wire(loopctl, 2, fall, 1)
    p.wire(rise, 0, env_min, 0); p.wire(fall, 0, env_min, 1); p.wire(env_min, 0, env)
    src_l = p.obj(sx0, sy0 + 310, "*~", 2, 1, ["signal"])
    src_r = p.obj(sx0 + 65, sy0 + 310, "*~", 2, 1, ["signal"])
    p.wire(groove, 0, src_l); p.wire(groove, 1, src_r); p.wire(env, 0, src_l, 1); p.wire(env, 0, src_r, 1)
    src_pre = p.obj(LX, 290, "prepend source")
    p.wire(route, 0, entry); p.wire(route, 0, src_pre); p.wire(src_pre, 0, engine)

    # source speed: slider, number, presets, keep pitch
    px, py, x0, y0 = mx + 12, my + 96, 2900, 420
    label(p, px, py + 2, "SOURCE\nSPEED", 50, 9.0)
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
    keep = p.toggle(x0 + 240, y0 + 30, 20, pres=[px + 288, py + 27, 20, 20])
    label(p, px + 310, py + 24, "keep\npitch", 40, 9.0)
    p.wire(p.obj(x0 + 240, y0, "loadmess 0"), 0, keep)
    stretch = p.obj(x0 + 240, y0 + 60, "prepend timestretch")
    p.wire(keep, 0, stretch); p.wire(stretch, 0, groove)

    # relay controls
    auto = p.toggle(LX + 480, 520, 22, pres=[mx + 12, my + 156, 22, 22])
    p.wire(p.obj(LX + 480, 490, "loadmess 0"), 0, auto)
    label(p, mx + 38, my + 158, "auto-pass (for practising alone)", 200, 10.0)
    p.wire(auto, 0, p.obj(LX + 480, 580, "prepend autopass"), 0)
    p.wire(p.boxes[-1]["box"]["id"], 0, engine)
    reset = p.button(LX + 560, 520, 22, pres=[mx + 240, my + 156, 22, 22])
    label(p, mx + 266, my + 158, "reset relay", 80, 10.0)
    reset_m = p.msg(LX + 560, 550, "reset")
    p.wire(reset, 0, reset_m); p.wire(reset_m, 0, engine)
    ddsp_n = p.number(LX + 600, 520, 36, pres=[mx + 12, my + 184, 36, 22])
    p.wire(p.obj(LX + 600, 490, "loadmess 0"), 0, ddsp_n)
    label(p, mx + 52, my + 186, "MIDI-DDSP every n gens (0 = off)", 200, 10.0)
    p.wire(ddsp_n, 0, p.obj(LX + 600, 580, "prepend ddsp_every"), 0)
    p.wire(p.boxes[-1]["box"]["id"], 0, engine)
    gen = p.number(LX + 300, 640, 64, pres=[mx + 350, my + 150, 64, 34], fontsize=22.0)
    label(p, mx + 350, my + 186, "generation", 70, 10.0)
    p.wire(engine, 3, gen)
    relay_status = p.msg(LX + 400, 640, "ready: NEW SOURCE", 416, pres=[mx + 12, my + 210, 410, 22])
    p.wire(engine, 2, relay_status)
    aimat_status = p.msg(LX, 200, "waiting…", 344, pres=[mx + 12, my + 234, 410, 20], fontsize=10.0)
    st = p.obj(LX + 400, 200, "prepend set")
    p.wire(route, 3, st); p.wire(st, 0, aimat_status)

    # effects: plug-in slots and macros
    fx = mx + 440
    label(p, fx, my + 30, "EFFECTS (plug-ins, 100% wet)", 240, 10.0)
    reverb = p.obj(5800, 300, "vst~ 2 2 @autosave 1", 2, 8, ["signal", "signal", "", "", "", "", "", ""], w=160)
    delay = p.obj(6100, 300, "vst~ 2 2 @autosave 1", 2, 8, ["signal", "signal", "", "", "", "", "", ""], w=160)
    for i, (plug_target, word) in enumerate(((reverb, "reverb"), (delay, "delay"))):
        lx = fx + i * 122
        b1 = p.button(5800 + i * 300, 260, 22, pres=[lx, my + 48, 22, 22])
        label(p, lx + 26, my + 50, f"load {word}", 90, 10.0)
        b2 = p.button(5840 + i * 300, 260, 22, pres=[lx, my + 74, 22, 22])
        label(p, lx + 26, my + 76, f"show {word}", 90, 10.0)
        m1 = p.msg(5800 + i * 300, 230, "plug"); m2 = p.msg(5850 + i * 300, 230, "open")
        p.wire(b1, 0, m1); p.wire(m1, 0, plug_target); p.wire(b2, 0, m2); p.wire(m2, 0, plug_target)
    to_rev = p.dial(6600, 200, "delay_to_reverb", 0.0, 1.0, 0.3, 1, pres=[fx, my + 104, 44, 48], label="dly→rev")
    wash = p.dial(6660, 200, "wash", 0.0, 1.0, 0.0, 1, pres=[fx + 52, my + 104, 44, 48], label="WASH")
    echo = p.dial(6720, 200, "echo", 0.0, 1.0, 0.0, 1, pres=[fx + 104, my + 104, 44, 48], label="ECHO")
    label(p, fx + 156, my + 108, "WASH / ECHO add\nreverb / delay to\neverything", 100, 9.0)
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
    turn = engine
    player_strips, speaker_meters = [], []
    for k in (1, 2, 3):
        cx = 8 + (k - 1) * 228
        character = CHARACTERS[k - 1]
        section(p, "player", f"PLAYER {k} · {character[0]}", cx, 44, 220, 600)
        X0 = 3700 + (k - 1) * 520
        light = p.add("led", X0 + 400, 40, 40, 40, None, 1, 1, ["int"], [cx + 174, 44 + 32, 36, 36],
                      oncolor=[0.2, 0.95, 0.35, 1.0], parameter_enable=0, ignoreclick=1)
        is_mine = p.obj(X0 + 400, 10, f"== {k}", 2, 1)
        p.wire(engine, 4, is_mine); p.wire(is_mine, 0, light)
        label(p, cx + 166, 44 + 70, "your turn", 52, 9.0)
        pass_btn = p.live_button(X0 + 300, 40, f"pass_{k}", 50, [cx + 12, 44 + 32, 50, 50])
        label(p, cx + 22, 44 + 84, "PASS", 40, 10.0)
        pass_t = p.obj(X0 + 300, 100, "t b", 1, 1, ["bang"])
        pass_m = p.msg(X0 + 300, 130, f"pass {k}")
        p.wire(pass_btn, 0, pass_t); p.wire(pass_t, 0, pass_m); p.wire(pass_m, 0, engine)
        twist = p.dial(X0 + 360, 100, f"twist_{k}", 0, 1, 0.3, 1, pres=[cx + 74, 44 + 32, 44, 48], label="twist")
        tw_pre = p.obj(X0 + 360, 160, f"prepend twist {k}")
        p.wire(twist, 0, tw_pre); p.wire(tw_pre, 0, engine)
        pace = p.dial(X0 + 420, 100, f"pace_{k}", -1, 1, 0, 1, pres=[cx + 122, 44 + 32, 44, 48], label="pace")

        # voice: seq → shaper → synth
        ctrl = p.obj(X0, 40, "route speed octave load write", 5, 5)
        p.wire(to_voice, k - 1, ctrl)
        play = p.obj(X0, 140, "f 1024")
        p.wire(ctrl, 0, play, 1)
        paced = p.obj(X0, 170, "* 1.", 2, 1)
        pace_x = p.obj(X0 + 420, 160, "expr pow(4\\, $f1)")
        p.wire(pace, 0, pace_x); p.wire(pace_x, 0, paced, 1)
        whole = p.obj(X0, 200, "i", 2, 1)
        start = p.obj(X0, 230, "prepend start")
        seq = p.obj(X0, 260, "seq", 1, 2, ["int", "bang"])
        p.wire(play, 0, paced); p.wire(paced, 0, whole); p.wire(whole, 0, start); p.wire(start, 0, seq)
        entry_v = p.obj(X0 + 130, 80, "t b s b", 1, 3, ["bang", "", "bang"])
        p.wire(ctrl, 2, entry_v)
        stop = p.msg(X0 + 260, 110, "stop")
        panic_m = p.msg(X0 + 310, 110, "panic")
        read = p.obj(X0 + 180, 110, "prepend read")
        write = p.obj(X0 + 380, 200, "prepend write")
        p.wire(ctrl, 3, write); p.wire(write, 0, seq)
        p.wire(entry_v, 2, stop); p.wire(entry_v, 2, panic_m); p.wire(entry_v, 1, read); p.wire(entry_v, 0, play)
        p.wire(stop, 0, seq); p.wire(read, 0, seq)
        ended_t = p.obj(X0 + 100, 300, "t b b", 1, 2, ["bang", "bang"])
        ended = p.msg(X0 + 180, 330, f"ended {k}")
        p.wire(seq, 1, ended_t); p.wire(ended_t, 1, ended)
        p.wire(ended, 0, p.obj(X0 + 180, 360, "s chain_to_engine", 1, 0))
        wait = p.obj(X0 + 100, 330, "delay 150", 2, 1, ["bang"])
        p.wire(ended_t, 0, wait); p.wire(wait, 0, play)
        parse = p.obj(X0, 400, "midiparse", 1, 8)
        p.wire(seq, 0, parse)
        panic_in = p.obj(X0 + 260, 80, "r chain_panic", 0, 1)
        p.wire(panic_in, 0, stop); p.wire(panic_in, 0, panic_m)
        grains = p.obj(X0, 560, f"chain_grains {character[0]}", 1, 2, ["signal", "signal"], w=160)
        p.wire(parse, 0, grains); p.wire(panic_m, 0, grains)
        # each player's grain knobs (MIDI-mappable), starting from their character
        name, size0, spray0, tail0 = character
        knobs = (("size", 10.0, 2000.0, size0, 2), ("spray", 0.0, 1.0, spray0, 1),
                 ("tail", 20.0, 10000.0, tail0, 2), ("pitch", -24.0, 24.0, 0.0, 1))
        for i, (key, lo, hi, init, unit) in enumerate(knobs):
            d = p.dial(X0 + 200 + i * 60, 460, f"{key}_{k}", lo, hi, init, unit,
                       pres=[cx + 12 + i * 48, 44 + 104, 44, 48], label=key)
            pre = p.obj(X0 + 200 + i * 60, 520, f"prepend {key}")
            p.wire(d, 0, pre); p.wire(pre, 0, grains)
        steps = p.toggle(X0 + 460, 460, 20, pres=[cx + 12, 44 + 154, 20, 20])
        label(p, cx + 36, 44 + 155, "pitch in steps (octaves, fifths)", 180, 9.0)
        p.wire(p.obj(X0 + 460, 430, "loadmess 0"), 0, steps)
        steps_pre = p.obj(X0 + 460, 520, "prepend steps")
        p.wire(steps, 0, steps_pre); p.wire(steps_pre, 0, grains)

        strip = p.add("bpatcher", 7000 + (k - 1) * 170, 40, 150, 370, None, 2, 6, ["signal"] * 6,
                      pres=[cx + 35, 220, 150, 370], name="chain_strip.maxpat", args=[f"VOICE{k}"],
                      bgmode=0, border=0, clickthrough=0, enablehscroll=0, enablevscroll=0,
                      lockeddragscroll=0, offset=[0.0, 0.0], viewvisibility=1)
        p.wire(grains, 0, strip, 0); p.wire(grains, 1, strip, 1)
        player_strips.append(strip)
        meter = p.add("meter~", 8000 + (k - 1) * 60, 700, 150, 14, None, 1, 1, ["float"], [cx + 35, 600, 150, 14])
        label(p, cx + 35, 616, f"speaker {k}", 80, 9.0)
        speaker_meters.append(meter)

    # ---------------------------------------------------------------- ROOM: source, DDSP, reverb, delay
    rx, ry = 700, 306
    section(p, "room", "ROOM · heard from every speaker", rx, ry, 692, 400)
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
    for s in player_strips + [src_strip, ddsp_strip]:
        p.wire(s, 2, reverb, 0); p.wire(s, 3, reverb, 1)
        p.wire(s, 4, delay, 0); p.wire(s, 5, delay, 1)
    dr_l = p.obj(6600, 300, "*~ 0.3", 2, 1, ["signal"])
    dr_r = p.obj(6660, 300, "*~ 0.3", 2, 1, ["signal"])
    p.wire(dly_strip, 0, dr_l); p.wire(dly_strip, 1, dr_r)
    p.wire(to_rev, 0, dr_l, 1); p.wire(to_rev, 0, dr_r, 1)
    p.wire(dr_l, 0, reverb, 0); p.wire(dr_r, 0, reverb, 1)

    # ---------------------------------------------------------------- OUTPUT: one speaker per player, room in all
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

    # room bus (stereo), scaled by the room level
    room_l = p.obj(OX + 280, 200, "*~", 2, 1, ["signal"])
    room_r = p.obj(OX + 340, 200, "*~", 2, 1, ["signal"])
    for s in room_strips:
        p.wire(s, 0, room_l, 0); p.wire(s, 1, room_r, 0)
    p.wire(room_gain, 0, room_l, 1); p.wire(room_gain, 0, room_r, 1)
    room_mono = p.obj(OX + 280, 230, "+~", 2, 1, ["signal"])
    p.wire(room_l, 0, room_mono, 0); p.wire(room_r, 0, room_mono, 1)
    room_half = p.obj(OX + 280, 260, "*~ 0.5", 2, 1, ["signal"])
    p.wire(room_mono, 0, room_half)

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

    def finish(src, x, mode_ramp):
        """master level → soft limit → STOP ALL fade → speaker/headphone mode"""
        lvl = p.obj(x, 300, "*~", 2, 1, ["signal"])
        sat = p.obj(x, 330, "tanh~", 1, 1, ["signal"])
        cut = p.obj(x, 360, "*~", 2, 1, ["signal"])
        mode = p.obj(x, 390, "*~", 2, 1, ["signal"])
        p.wire(src, 0, lvl); p.wire(master_gain, 0, lvl, 1); p.wire(lvl, 0, sat); p.wire(sat, 0, cut)
        p.wire(fade, 0, cut, 1); p.wire(cut, 0, mode); p.wire(mode_ramp, 0, mode, 1)
        return cut, mode

    # one speaker per player: their voice (mono) + the room
    speakers = []
    for k, strip in enumerate(player_strips):
        x = OX + 1000 + k * 120
        mono = p.obj(x, 200, "+~", 2, 1, ["signal"])
        half = p.obj(x, 230, "*~ 0.5", 2, 1, ["signal"])
        bus = p.obj(x, 260, "+~", 2, 1, ["signal"])
        p.wire(strip, 0, mono, 0); p.wire(strip, 1, mono, 1); p.wire(mono, 0, half)
        p.wire(half, 0, bus, 0); p.wire(room_half, 0, bus, 1)
        pre_mode, out = finish(bus, x, spk_ramp)
        p.wire(pre_mode, 0, speaker_meters[k])
        speakers.append(out)
    spk_dac = p.obj(OX + 1000, 460, "dac~ 1 2 3", 3, 0, w=120)
    for k, out in enumerate(speakers):
        p.wire(out, 0, spk_dac, k)
    label(p, ox + 268, oy + 26, "speaker outputs\nfor players 1 · 2 · 3", 110, 9.0)
    outs = []
    for k in range(3):
        nb = p.number(OX + 1000 + k * 50, 420, 36, pres=[ox + 380 + k * 40, oy + 32, 36, 22])
        p.wire(p.obj(OX + 1000 + k * 50, 390, f"loadmess {k + 1}"), 0, nb)
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

    # solo for every strip, as in v5
    soloist = p.obj(8300, 440, "js chain_solo.js", 1, 0, w=120)
    p.wire(p.obj(8300, 410, "r chain_solo", 0, 1), 0, soloist)

    wake = p.obj(8800, 400, "loadbang", 1, 1, ["bang"])
    for b in p.boxes:
        if b["box"]["maxclass"] == "live.dial":
            p.wire(wake, 0, b["box"]["id"])
    return p


if __name__ == "__main__":
    out = Path(sys.argv[1])
    b, c = build_grain_engine().save(out / "chain_grains.maxpat", [100.0, 100.0, 900.0, 600.0], presentation=False)
    print(f"chain_grains.maxpat: {b} boxes, {c} cords")
    b, c = build_relay().save(out / "aimat_relay_grains.maxpat", [20.0, 40.0, 1410.0, 840.0])
    print(f"aimat_relay_grains.maxpat: {b} boxes, {c} cords")
