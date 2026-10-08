// chain_voice_roles.js: v1's voice (chain_voice.js) with a role taken from the uilleann pipes, so each
// player is recognisable:
//   regulators (Player 1): the full chord, played as pulsed stabs. A busier phrase pulses faster, and an
//                          irregular one stumbles. Marker on arrival: a stab.
//   drones     (Player 2): only the root and fifth, low, ringing long. Marker on arrival: a slow fade-in.
//   chanter    (Player 3): the resonators sing one note at a time, moving through the phrase's notes,
//                          with grace-note flicks (more for a leapy phrase). Marker on arrival: a flick.
// Everything else is v1: grains from the profile, the pass (swell, release, floor), the knobs.
//
// In:  role regulators|drones|chanter   size <ms>   spray <0-1>   pitch <semitones>   steps <0|1>
//      ring <0-1>   floor <0-1>   arrive <profile>   release   failed   bang   panic
// Out (one outlet, split with [route grains clock position bankA bankB xfade level bright ring gate]):
//      as chain_voice.js, plus gate <amp> <ms> [<amp> <ms>]  → line~: the regulators' stabs (open otherwise)

autowatch = 1;
inlets = 1;
outlets = 1;

var ROLES = {
    regulators: { size: 70,  spray: 0.5,  transpose: 0,   octave: 0,   ring: 0.5,  lo: 180, hi: 720,
                  harmony: "chord", q: 1.0, swell: 4000, xfade: 4000 },
    drones:     { size: 600, spray: 0.1,  transpose: -12, octave: -12, ring: 0.85, lo: 55,  hi: 220,
                  harmony: "rootfifth", q: 1.6, swell: 8000, xfade: 6000 },
    chanter:    { size: 140, spray: 0.3,  transpose: 12,  octave: 12,  ring: 0.75, lo: 350, hi: 1400,
                  harmony: "line", q: 1.2, swell: 4000, xfade: 120 }
};
var STEPS = [-24, -17, -12, -5, 0, 7, 12, 19, 24];

var RELEASE_MS = 1500, SETTLE_MS = 20000, RECOVER_MS = 800, PANIC_MS = 30;
var WANDER_MS = 3000;
var OPEN_HZ = 9000, RELEASED_HZ = 2500, FLOOR_HZ = 900;
var Q_SHORT = 20, Q_LONG = 90;
var EMPTY_FREQ = 1000;
var MIN_WEIGHT = 0.35;
var GRACE_MS = 20, GRACE_HOLD_MS = 70, GRACE_RESOLVE_MS = 40;   // the chanter's flick

var NEUTRAL = { notes: 0, chord: [0, 0, 0, 0, 0, 0], weights: [0, 0, 0, 0, 0, 0], register: 62, range: 24,
                density: 6, legato: 0.6, velocity: 0.4, jagged: 8, regularity: 0.3 };

var random = Math.random;   // replaceable in tests
var running = [];           // scheduled Tasks, kept so they aren't garbage-collected before they fire
var later = function (fn, ms) {
    var t = new Task(function () { running.splice(running.indexOf(t), 1); fn(); });
    running.push(t);
    t.schedule(ms);
};

var c = ROLES.regulators;
var sizeMs = c.size, sprayAmt = c.spray, semis = 0, stepped = 0, ringAmt = c.ring, floorLevel = 0.15;
var phrase = null;
var bank = 0;
var mode = "silent";
var heldLevel = 0;
var centre = 0.5;
var loop = 0;               // bumped to stop the current pulse / melody loop
var singing = 0;            // the chanter's current note
var resolveTo = null;       // a flick in progress resolves to this note

function role(name) {
    if (!ROLES.hasOwnProperty(name)) { post("chain_voice_roles: unknown role " + name + "\n"); return; }
    c = ROLES[name];
    sizeMs = c.size; sprayAmt = c.spray; ringAmt = c.ring;
    out(["level", 0, 0]);
    out(["gate", c.harmony === "chord" ? 0.7 : 1, 0]);
    out(["ring", ringAmt]);
    grains();
}

// ---------------------------------------------------------------------
// knobs (as v1)
// ---------------------------------------------------------------------
function size(ms) { sizeMs = clamp(ms, 20, 2000); grains(); }
function spray(v) { sprayAmt = clamp(v, 0, 1); grains(); }
function pitch(s) { semis = clamp(s, -24, 24); grains(); }
function steps(on) { stepped = on ? 1 : 0; grains(); }
function ring(v) { ringAmt = clamp(v, 0, 1); out(["ring", ringAmt]); }
function floor(v) {
    floorLevel = clamp(v, 0, 1);
    if (mode === "released") { out(["level", floorLevel, 2000]); }
}

// ---------------------------------------------------------------------
// the pass
// ---------------------------------------------------------------------
function arrive() {
    var p = parse(Array.prototype.slice.call(arguments));
    if (!p.notes) { return; }
    var first = phrase === null;
    phrase = p;
    mode = "holder";
    heldLevel = lerp(0.6, 1, clamp((p.velocity - 0.2) / 0.4, 0, 1));
    centre = clamp((p.register - 40) / 44, 0, 1);
    out(["grains", "density", 1]);
    grains();
    out(["position", centre, 2000]);
    out(["level", heldLevel, c.swell]);
    out(["bright", OPEN_HZ, c.swell]);
    loop += 1;
    if (c.harmony === "line") {
        resolveTo = null;
        sing(pool(p)[0], true);                       // marker: arrive with a flick
        scheduleStep(loop);
    } else {
        if (first) {
            bank = 0;
            tune(0, notesFor(p));
            out(["xfade", 0, 0]);
        } else {
            bank = 1 - bank;
            tune(bank, notesFor(p));
            out(["xfade", bank, c.xfade]);
        }
        if (c.harmony === "chord") {
            stab();                                   // marker: arrive with a stab
            schedulePulse(loop);
        } else {
            out(["gate", 1, 500]);
        }
    }
}

function release() {
    if (mode !== "holder") { return; }
    mode = "released";
    loop += 1;
    if (resolveTo !== null) { finishFlick(); }        // never left hanging on a grace note
    out(["grains", "density", 0.45]);
    if (c.harmony === "chord") { out(["gate", 0.7, RELEASE_MS]); }
    out(["level", Math.max(floorLevel, heldLevel * 0.55), RELEASE_MS, floorLevel, SETTLE_MS]);
    out(["bright", RELEASED_HZ, RELEASE_MS, FLOOR_HZ, SETTLE_MS]);
}

function failed() {
    if (mode !== "released") { return; }
    mode = "holder";
    loop += 1;
    out(["grains", "density", 1]);
    out(["level", heldLevel, RECOVER_MS]);
    out(["bright", OPEN_HZ, RECOVER_MS]);
    if (c.harmony === "chord") { stab(); schedulePulse(loop); }
    if (c.harmony === "line") { scheduleStep(loop); }
}

function panic() {
    mode = "silent";
    loop += 1;
    out(["level", 0, PANIC_MS]);
}

function bang() {
    if (phrase === null) { return; }
    var wander = lerp(0.2, 0.02, phrase.regularity);
    out(["position", clamp(centre + wander * (random() * 2 - 1), 0, 1), WANDER_MS]);
}

// ---------------------------------------------------------------------
// regulators: pulsed stabs
// ---------------------------------------------------------------------
function stab() {
    var p = phrase || NEUTRAL;
    out(["gate", 1, 2, lerp(0.15, 0.4, p.legato), lerp(120, 600, p.legato)]);
}

function schedulePulse(token) {
    later(function () {
        if (token !== loop || mode !== "holder") { return; }
        stab();
        schedulePulse(token);
    }, pulseGap());
}

// about one stab per 3 notes of the phrase per second; an irregular phrase stumbles (up to ±80%)
function pulseGap() {
    var p = phrase || NEUTRAL;
    var rate = clamp(p.density / 3, 0.4, 4);
    return (1000 / rate) * (1 + (random() * 2 - 1) * lerp(0.8, 0, p.regularity));
}

// ---------------------------------------------------------------------
// chanter: one note at a time, with grace-note flicks
// ---------------------------------------------------------------------
function scheduleStep(token) {
    later(function () {
        if (token !== loop || mode !== "holder") { return; }
        var p = phrase || NEUTRAL;
        var notes = pool(p), next = singing;
        if (notes.length > 1) {
            while (next === singing) { next = pickWeighted(notes, weightsOf(p, notes)); }
        }
        sing(next, random() < lerp(0.05, 0.6, clamp(p.jagged / 16, 0, 1)));
        scheduleStep(token);
    }, stepGap());
}

function stepGap() {
    var p = phrase || NEUTRAL;
    return clamp(3000 / Math.max(p.density, 0.25), 400, 3000) * (1 + (random() * 2 - 1) * lerp(0.4, 0, p.regularity));
}

function sing(note, flick) {
    if (resolveTo !== null) { finishFlick(); }
    if (flick) {
        var grace = note + (random() < 0.5 ? 2 : 5);      // a cut: a quick note above, then the note
        switchTo([grace], GRACE_MS);
        resolveTo = note;
        later(function () { if (resolveTo !== null) { finishFlick(); } }, GRACE_HOLD_MS);
    } else {
        switchTo([note], c.xfade);
    }
    singing = note;
}

function finishFlick() {
    var note = resolveTo;
    resolveTo = null;
    switchTo([note], GRACE_RESOLVE_MS);
}

function switchTo(notes, ms) {
    bank = 1 - bank;
    tune(bank, notes);
    out(["xfade", bank, ms]);
}

// the chanter's notes: the phrase's chord notes it uses enough, strongest first
function pool(p) {
    var notes = [];
    for (var i = 0; i < 6; i++) {
        if ((p.chord[i] || 0) > 0 && (p.weights[i] || 0) >= MIN_WEIGHT) { notes.push(p.chord[i]); }
    }
    notes.sort(function (a, b) { return weightOf(p, b) - weightOf(p, a); });
    return notes.length ? notes : [60];
}

function weightOf(p, note) {
    for (var i = 0; i < 6; i++) { if (p.chord[i] === note) { return p.weights[i] || 0; } }
    return 0;
}

function weightsOf(p, notes) {
    var w = [];
    for (var i = 0; i < notes.length; i++) { w.push(weightOf(p, notes[i])); }
    return w;
}

function pickWeighted(values, weights) {
    var total = 0, i;
    for (i = 0; i < weights.length; i++) { total += weights[i]; }
    var r = random() * total;
    for (i = 0; i < values.length; i++) { if ((r -= weights[i]) < 0) { return values[i]; } }
    return values[values.length - 1];
}

// ---------------------------------------------------------------------
// resonators
// ---------------------------------------------------------------------
// [note, gain] pairs this role's resonators ring for a phrase
function notesFor(p) {
    var list = [], i;
    if (c.harmony === "rootfifth") {
        var root = pool(p)[0];
        return [[root, 1], [root + 7, 0.7], [root - 12, 0.5]];
    }
    for (i = 0; i < 6; i++) {
        if ((p.chord[i] || 0) > 0 && (p.weights[i] || 0) >= MIN_WEIGHT) { list.push([p.chord[i], p.weights[i]]); }
    }
    return list;
}

function tune(which, notes) {
    var name = which ? "bankB" : "bankA";
    var p = phrase || NEUTRAL, freqs = [], gains = [];
    for (var i = 0; i < 6; i++) {
        var entry = notes[i];
        if (entry === undefined) { freqs.push(EMPTY_FREQ); gains.push(0); continue; }
        var note = entry.length ? entry[0] : entry, gain = entry.length ? entry[1] : 1;
        freqs.push(fold(mtof(note + c.octave)));
        gains.push(gain);
    }
    out([name, "freq", 0].concat(freqs));
    out([name, "gain", 0].concat(gains));
    out([name, "QAll", lerp(Q_SHORT, Q_LONG, p.legato) * c.q]);
}

function fold(hz) {
    while (hz < c.lo) { hz *= 2; }
    while (hz > c.hi) { hz /= 2; }
    return hz;
}

// ---------------------------------------------------------------------
// grains (as v1)
// ---------------------------------------------------------------------
function grains() {
    var p = phrase || NEUTRAL;
    var grainMs = sizeMs * lerp(0.7, 1.6, p.legato);
    var n = Math.round(lerp(8, 24, clamp(log2(Math.max(p.density, 1)) / 5, 0, 1)));
    out(["clock", 1000 / grainMs]);
    out(["grains", "ngrains", n]);
    out(["grains", "amp", 1 / Math.sqrt(n)]);
    out(["grains", "delayRandom", sprayAmt * 1500 + clamp(p.jagged / 16, 0, 1) * 400]);
    out(["grains", "windowRandom", lerp(1, 0.6, p.regularity)]);
    out(["grains", "spaceRandom", 0.3]);
    out(["grains", "transposeRandom", 0.05 + 0.1 * clamp(p.jagged / 16, 0, 1)]);
    out(["grains", "transpose", c.transpose + snap(semis)]);
}

function snap(s) {
    if (!stepped) { return s; }
    var best = STEPS[0];
    for (var i = 1; i < STEPS.length; i++) { if (Math.abs(STEPS[i] - s) < Math.abs(best - s)) { best = STEPS[i]; } }
    return best;
}

// ---------------------------------------------------------------------
// helpers
// ---------------------------------------------------------------------
function parse(args) {
    var p = {};
    for (var key in NEUTRAL) { p[key] = NEUTRAL[key]; }
    var i = 0;
    while (i < args.length) {
        var key2 = String(args[i]);
        if (key2 === "chord" || key2 === "weights") {
            p[key2] = args.slice(i + 1, i + 7);
            i += 7;
        } else {
            p[key2] = Number(args[i + 1]);
            i += 2;
        }
    }
    return p;
}

function out(list) { outlet(0, list); }
function mtof(m) { return 440 * Math.pow(2, (m - 69) / 12); }
function log2(x) { return Math.log(x) / Math.LN2; }
function lerp(a, b, t) { return a + (b - a) * t; }
function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
