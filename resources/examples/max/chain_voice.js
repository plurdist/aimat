// chain_voice.js: one player's cloud, set by a phrase profile (AIM2-65) instead of playing the phrase.
//
// The phrase decides the world for the whole turn:
//   chord + weights  → two resonator banks (fffb~) that ring the phrase's notes; a new phrase
//                      goes into the other bank and crossfades over 4 s (the chord change)
//   register         → where in the source the grains read (low → start, high → end)
//   density          → how many grains (8 to 24)
//   legato           → longer grains, and resonators that ring longer
//   jagged           → how far the grains scatter
//   regularity       → how steady the read position is (irregular phrases wander)
//   velocity         → how loud the cloud is when it's your turn
// The pass: arrive = swell to the foreground; release (you pressed PASS) = thin and darken at
// once, then settle over ~20 s to the floor, still ringing your last chord; failed = come back.
//
// In:  character dust|drift|glass   size <ms>   spray <0-1>   pitch <semitones>   steps <0|1>
//      ring <0-1>   floor <0-1>   arrive <profile: key value …>   release   failed   bang   panic
// Out (one outlet, split with [route grains clock position bankA bankB xfade level bright ring]):
//      grains <attribute> <value>   → grainflow~
//      clock <Hz>                   → the grain clock (phasor~)
//      position <0-1> <ms>          → line~ → grainflow~ traversal
//      bankA|bankB freq|gain 0 <6 values>, bankA|bankB QAll <q>   → fffb~
//      xfade <0|1> <ms>             → line~ (0 = bank A heard, 1 = bank B)
//      level <amp> <ms> [<amp> <ms>]  → line~
//      bright <Hz> <ms> [<Hz> <ms>]   → line~ → low-pass cutoff
//      ring <0-1>                   → mix of resonated vs plain grains

autowatch = 1;
inlets = 1;
outlets = 1;

var CHARACTERS = {
    // lo/hi: the register (Hz) each character's resonators fold the chord into
    dust:  { size: 70,  spray: 0.5,  transpose: 0,   octave: 0,   ring: 0.5, lo: 180, hi: 720 },
    drift: { size: 400, spray: 0.15, transpose: -12, octave: -12, ring: 0.8, lo: 80,  hi: 330 },
    glass: { size: 140, spray: 0.3,  transpose: 12,  octave: 12,  ring: 0.7, lo: 350, hi: 1400 }
};
var STEPS = [-24, -17, -12, -5, 0, 7, 12, 19, 24];

var XFADE_MS = 4000;      // chord change
var SWELL_MS = 4000;      // arriving in the foreground
var RELEASE_MS = 1500;    // thinning after PASS
var SETTLE_MS = 20000;    // settling to the floor
var RECOVER_MS = 800;     // a failed pass
var PANIC_MS = 30;
var WANDER_MS = 3000;     // glide between read positions
var OPEN_HZ = 9000, RELEASED_HZ = 2500, FLOOR_HZ = 900;
var Q_SHORT = 20, Q_LONG = 90;
var EMPTY_FREQ = 1000;    // unused resonators (their gain is 0)
var MIN_WEIGHT = 0.35;    // quieter chord notes are left out (real phrases often use all 12 notes)

// The numbers below are calibrated on real Basic Pitch and Continuator output (2026-10-08):
// density p10–p90 ≈ 1–35 notes/s, register ≈ 45–78, velocity ≈ 0.2–0.55, jagged ≈ 4–16.
var NEUTRAL = { notes: 0, chord: [0, 0, 0, 0, 0, 0], weights: [0, 0, 0, 0, 0, 0], register: 62, range: 24,
                density: 6, legato: 0.6, velocity: 0.4, jagged: 8, regularity: 0.3 };

var random = Math.random;   // replaceable in tests

var c = CHARACTERS.dust;
var sizeMs = c.size, sprayAmt = c.spray, semis = 0, stepped = 0, ringAmt = c.ring, floorLevel = 0.15;
var phrase = null;          // the profile of the phrase this voice last received
var bank = 0;               // the bank being heard: 0 = A, 1 = B
var mode = "silent";        // silent | holder | released
var heldLevel = 0;
var centre = 0.5;

function character(name) {
    if (!CHARACTERS.hasOwnProperty(name)) { post("chain_voice: unknown character " + name + "\n"); return; }
    c = CHARACTERS[name];
    sizeMs = c.size; sprayAmt = c.spray; ringAmt = c.ring;
    out(["level", 0, 0]);
    out(["ring", ringAmt]);
    grains();
}

// ---------------------------------------------------------------------
// the player's knobs
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
    if (first) {
        bank = 0;
        tune("bankA", p);
        out(["xfade", 0, 0]);
    } else {
        bank = 1 - bank;
        tune(bank ? "bankB" : "bankA", p);
        out(["xfade", bank, XFADE_MS]);
    }
    mode = "holder";
    heldLevel = lerp(0.6, 1, clamp((p.velocity - 0.2) / 0.4, 0, 1));
    centre = lerp(0.05, 0.95, clamp((p.register - 40) / 44, 0, 1));
    out(["grains", "density", 1]);
    grains();
    out(["position", centre, 2000]);
    out(["level", heldLevel, SWELL_MS]);
    out(["bright", OPEN_HZ, SWELL_MS]);
}

function release() {
    if (mode !== "holder") { return; }
    mode = "released";
    out(["grains", "density", 0.45]);
    out(["level", Math.max(floorLevel, heldLevel * 0.55), RELEASE_MS, floorLevel, SETTLE_MS]);
    out(["bright", RELEASED_HZ, RELEASE_MS, FLOOR_HZ, SETTLE_MS]);
}

function failed() {
    if (mode !== "released") { return; }
    mode = "holder";
    out(["grains", "density", 1]);
    out(["level", heldLevel, RECOVER_MS]);
    out(["bright", OPEN_HZ, RECOVER_MS]);
}

function panic() {
    mode = "silent";
    out(["level", 0, PANIC_MS]);
}

// A tick (every few seconds): the read position wanders around the phrase's register.
function bang() {
    if (phrase === null) { return; }
    var wander = lerp(0.2, 0.02, phrase.regularity);
    out(["position", clamp(centre + wander * (random() * 2 - 1), 0.02, 0.98), WANDER_MS]);
}

// ---------------------------------------------------------------------
// helpers
// ---------------------------------------------------------------------
function tune(name, p) {
    var freqs = [], gains = [];
    for (var i = 0; i < 6; i++) {
        var note = p.chord[i] || 0, weight = p.weights[i] || 0;
        var used = note > 0 && weight >= MIN_WEIGHT;
        freqs.push(used ? fold(mtof(note + c.octave)) : EMPTY_FREQ);
        gains.push(used ? weight : 0);
    }
    out([name, "freq", 0].concat(freqs));
    out([name, "gain", 0].concat(gains));
    out([name, "QAll", lerp(Q_SHORT, Q_LONG, p.legato)]);
}

function grains() {
    var p = phrase || NEUTRAL;
    var grainMs = sizeMs * lerp(0.7, 1.6, p.legato);
    out(["clock", 1000 / grainMs]);
    var n = Math.round(lerp(8, 24, clamp(log2(Math.max(p.density, 1)) / 5, 0, 1)));
    out(["grains", "ngrains", n]);
    out(["grains", "amp", 1 / Math.sqrt(n)]);      // overlapping grains add up: keep the cloud's level steady
    out(["grains", "delayRandom", sprayAmt * 1500 + clamp(p.jagged / 16, 0, 1) * 400]);
    out(["grains", "windowRandom", lerp(1, 0.6, p.regularity)]);     // never a rigid grid (that buzzes)
    out(["grains", "spaceRandom", 0.3]);
    out(["grains", "transposeRandom", 0.05 + 0.1 * clamp(p.jagged / 16, 0, 1)]);
    out(["grains", "transpose", c.transpose + snap(semis)]);
}

// the same note in the character's register (whole octaves up or down)
function fold(hz) {
    while (hz < c.lo) { hz *= 2; }
    while (hz > c.hi) { hz /= 2; }
    return hz;
}

function snap(s) {
    if (!stepped) { return s; }
    var best = STEPS[0];
    for (var i = 1; i < STEPS.length; i++) { if (Math.abs(STEPS[i] - s) < Math.abs(best - s)) { best = STEPS[i]; } }
    return best;
}

// arrive's arguments: notes N chord c1..c6 weights w1..w6 register R …
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
