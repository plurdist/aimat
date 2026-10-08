// chain_voice_v2.js: one player's cloud, set by a phrase profile (AIM2-65), reshaped live by the
// player's sculpting (AIM2-66). Grains in the spirit of Roads' Microsound (after Oliver Thurley's
// tutorial and Eric's markovular patch): every grain picks its start from a window and its own length
// from a range, and a coin toss picks its pitch from a small vocabulary drawn from the phrase's chord.
//
// The phrase decides the world for the turn:
//   chord + weights  → resonators (fffb~) ring the chord; a new chord crossfades into the other bank
//                    → the grains' coin toss: unison, the chord's intervals, octaves
//   register         → where in the source the start window sits
//   range            → how wide the start window is (with the spray knob)
//   legato           → how long the grains are, and how much their lengths vary (staccato varies more)
//   density          → how many grains
//   jagged           → how many grains play backwards
//   regularity       → how steady the window is (irregular phrases wander)
//   velocity         → how loud the cloud is when it's your turn
//
// In:  character dust|drift|glass   size <ms>   spray <0-1>   ring <0-1>   floor <0-1>   srclen <ms>
//      arrive <profile>   reshape <profile>   release   failed   bang (every few seconds)   panic
// Out (one outlet, split with [route grains clock position bankA bankB xfade level bright ring pan]):
//      grains <attribute> <value> | grains g <n> transpose <semitones>   → grainflow~
//      clock <Hz>                 → the grain clock (the longest grain)
//      position <0-1> <ms>        → line~ → traversal (the end of the start window)
//      bankA|bankB freq|gain 0 <6 values>, bankA|bankB QAll <q>   → fffb~
//      xfade <0|1> <ms>   level <amp> <ms> […]   bright <Hz> <ms> […]   ring <0-1>
//      pan panSpread <0-1>        → grainflow.util.stereoPan~

autowatch = 1;
inlets = 1;
outlets = 1;

var CHARACTERS = {
    // size: the longest grain (ms); lo/hi: the register (Hz) the resonators fold the chord into;
    // octave: where the resonators and grains sit; toss: the coin toss, relative to the octave
    dust:  { size: 120, spray: 0.5,  ring: 0.5, octave: 0,   lo: 180, hi: 720,  pan: 0.7,
             toss: { unison: 0.45, chord: 0.35, down: 0.15, down2: 0.05, up: 0 } },
    drift: { size: 900, spray: 0.15, ring: 0.8, octave: -12, lo: 80,  hi: 330,  pan: 0.5,
             toss: { unison: 0.45, chord: 0.30, down: 0.20, down2: 0, up: 0.05 } },
    glass: { size: 250, spray: 0.3,  ring: 0.7, octave: 12,  lo: 350, hi: 1400, pan: 1.0,
             toss: { unison: 0.45, chord: 0.35, down: 0.05, down2: 0, up: 0.15 } }
};
var GRAINS = 24;          // grainflow~'s grain count (the coin toss covers every grain)

var XFADE_MS = 4000;      // a new phrase: chord change
var RESHAPE_MS = 1200;    // sculpting: chord change
var FRESH = 0.05;         // a bank this early in its fade-in is still silent: retune it in place
var SWELL_MS = 4000, RELEASE_MS = 1500, SETTLE_MS = 20000, RECOVER_MS = 800, PANIC_MS = 30;
var WANDER_MS = 3000;
var OPEN_HZ = 9000, RELEASED_HZ = 2500, FLOOR_HZ = 900;
var Q_SHORT = 20, Q_LONG = 90;
var EMPTY_FREQ = 1000;
var MIN_WEIGHT = 0.35;    // quieter chord notes are left out (real phrases often use all 12 notes)

var NEUTRAL = { notes: 0, chord: [0, 0, 0, 0, 0, 0], weights: [0, 0, 0, 0, 0, 0], register: 62, range: 24,
                density: 6, legato: 0.6, velocity: 0.4, jagged: 8, regularity: 0.3 };

var random = Math.random;   // replaceable in tests
var now = function () { return new Date().getTime(); };
var pendingTask = null;
var later = function (fn, ms) { pendingTask = new Task(fn); pendingTask.schedule(ms); };

var c = CHARACTERS.dust;
var sizeMs = c.size, sprayAmt = c.spray, ringAmt = c.ring, floorLevel = 0.15, srcMs = 20000;
var phrase = null;
var bank = 0;                       // the bank being heard: 0 = A, 1 = B
var tuned = ["", ""];               // what each bank is tuned to (to skip retuning to the same chord)
var switchedAt = -1e12, switchMs = 1;
var pending = null, waitingToSwitch = 0;
var mode = "silent";
var heldLevel = 0;
var centre = 0.5;

function character(name) {
    if (!CHARACTERS.hasOwnProperty(name)) { post("chain_voice_v2: unknown character " + name + "\n"); return; }
    c = CHARACTERS[name];
    sizeMs = c.size; sprayAmt = c.spray; ringAmt = c.ring;
    out(["level", 0, 0]);
    out(["ring", ringAmt]);
    out(["pan", "panSpread", c.pan]);
    grains();
}

// ---------------------------------------------------------------------
// knobs
// ---------------------------------------------------------------------
function size(ms) { sizeMs = clamp(ms, 20, 2000); grains(); }
function spray(v) { sprayAmt = clamp(v, 0, 1); grains(); window_(); }
function ring(v) { ringAmt = clamp(v, 0, 1); out(["ring", ringAmt]); }
function srclen(ms) { srcMs = Math.max(100, ms); grains(); window_(); }
function floor(v) {
    floorLevel = clamp(v, 0, 1);
    if (mode === "released") { out(["level", floorLevel, 2000]); }
}

// ---------------------------------------------------------------------
// a phrase arrives; the holder sculpts it
// ---------------------------------------------------------------------
function arrive() {
    var p = parse(Array.prototype.slice.call(arguments));
    if (!p.notes) { return; }
    var first = phrase === null;
    phrase = p;
    pending = null;
    if (first) {
        bank = 0;
        tune(0, p);
        out(["xfade", 0, 0]);
        switchedAt = now(); switchMs = 1;
    } else {
        switchTo(p, XFADE_MS);
    }
    mode = "holder";
    heldLevel = lerp(0.6, 1, clamp((p.velocity - 0.2) / 0.4, 0, 1));
    centre = lerp(0.05, 0.95, clamp((p.register - 40) / 44, 0, 1));
    out(["grains", "density", 1]);
    grains();
    toss();
    window_(2000);
    out(["level", heldLevel, SWELL_MS]);
    out(["bright", OPEN_HZ, SWELL_MS]);
}

function reshape() {
    if (mode !== "holder") { return; }
    var p = parse(Array.prototype.slice.call(arguments));
    if (!p.notes) { return; }
    phrase = p;
    centre = lerp(0.05, 0.95, clamp((p.register - 40) / 44, 0, 1));
    grains();
    toss();
    window_(1000);
    if (tuning(p) === tuned[bank] && !pending) { return; }
    var elapsed = now() - switchedAt;
    if (elapsed < FRESH * switchMs) {
        tune(bank, p);                       // the incoming bank is still silent
    } else if (elapsed < switchMs) {
        pending = p;                         // wait for the crossfade to finish
        if (!waitingToSwitch) {
            waitingToSwitch = 1;
            later(applyPending, switchMs - elapsed);
        }
    } else {
        switchTo(p, RESHAPE_MS);
    }
}

function applyPending() {
    waitingToSwitch = 0;
    if (pending && mode === "holder" && tuning(pending) !== tuned[bank]) {
        switchTo(pending, RESHAPE_MS);
    }
    pending = null;
}

function switchTo(p, ms) {
    bank = 1 - bank;
    tune(bank, p);
    out(["xfade", bank, ms]);
    switchedAt = now(); switchMs = ms;
}

// ---------------------------------------------------------------------
// the pass
// ---------------------------------------------------------------------
function release() {
    if (mode !== "holder") { return; }
    mode = "released";
    pending = null;
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

// Every few seconds: the window wanders around the register, and the coins are tossed again.
function bang() {
    if (phrase === null) { return; }
    var wander = lerp(0.2, 0.02, phrase.regularity);
    centre = clamp(centre + wander * (random() * 2 - 1) * 0.5, 0.02, 0.98);
    window_(WANDER_MS);
    toss();
}

// ---------------------------------------------------------------------
// the grains
// ---------------------------------------------------------------------
function grains() {
    var p = phrase || NEUTRAL;
    var longest = sizeMs * lerp(0.8, 1.5, p.legato);
    var shortest = lerp(0.15, 0.6, p.legato);             // as a share of the longest
    var n = Math.round(lerp(8, GRAINS, clamp(log2(Math.max(p.density, 1)) / 5, 0, 1)));
    out(["clock", 1000 / longest]);
    out(["grains", "spaceRandom", 1 - shortest]);          // each grain sounds for a random share of the clock
    out(["grains", "ngrains", n]);
    out(["grains", "amp", 1 / Math.sqrt(n * (1 + shortest) / 2)]);
    out(["grains", "windowRandom", lerp(1, 0.6, p.regularity)]);   // never a rigid grid (that buzzes)
    out(["grains", "transposeRandom", 0.05 + 0.1 * clamp(p.jagged / 16, 0, 1)]);
    out(["grains", "direction", 1 - 2 * lerp(0.08, 0.3, clamp(p.jagged / 16, 0, 1))]);
    out(["grains", "delayRandom", windowWidth() * srcMs]);
}

// the start window, as a share of the source: wider for a wide-ranging phrase, scaled by spray
function windowWidth() {
    var p = phrase || NEUTRAL;
    return clamp(sprayAmt * lerp(0.08, 0.6, clamp(p.range / 48, 0, 1)), 0, 0.9);
}

// grains start between (position - width) and position
function window_(ms) {
    var width = windowWidth();
    out(["position", clamp(centre + width / 2, width, 1), ms || 500]);
}

// The coin toss: each grain gets unison, one of the chord's intervals, or an octave.
function toss() {
    var p = phrase || NEUTRAL;
    var intervals = [], weights = [], strongest = -1, root = 0;
    for (var i = 0; i < 6; i++) {
        if ((p.chord[i] || 0) > 0 && (p.weights[i] || 0) > strongest) { strongest = p.weights[i]; root = p.chord[i]; }
    }
    for (var k = 0; k < 6; k++) {
        var note = p.chord[k] || 0, w = p.weights[k] || 0;
        if (note > 0 && w >= MIN_WEIGHT && note !== root) {
            var step = ((note - root) % 12 + 12) % 12;
            intervals.push(step > 6 ? step - 12 : step);
            weights.push(w);
        }
    }
    var t = c.toss;
    for (var g = 1; g <= GRAINS; g++) {
        var r = random(), semis = 0;
        if (r < t.unison) {
            semis = 0;
        } else if ((r -= t.unison) < t.chord) {
            semis = intervals.length ? pickWeighted(intervals, weights) : 0;
        } else if ((r -= t.chord) < t.down) {
            semis = -12;
        } else if ((r -= t.down) < t.down2) {
            semis = -24;
        } else {
            semis = t.up > 0 ? 12 : 0;
        }
        out(["grains", "g", g, "transpose", c.octave + semis]);
    }
}

function pickWeighted(values, weights) {
    var total = 0, i;
    for (i = 0; i < weights.length; i++) { total += weights[i]; }
    var r = random() * total;
    for (i = 0; i < values.length; i++) { if ((r -= weights[i]) < 0) { return values[i]; } }
    return values[values.length - 1];
}

// ---------------------------------------------------------------------
// the resonators
// ---------------------------------------------------------------------
function tune(which, p) {
    var name = which ? "bankB" : "bankA";
    var t = tuningOf(p);
    out([name, "freq", 0].concat(t.freqs));
    out([name, "gain", 0].concat(t.gains));
    out([name, "QAll", lerp(Q_SHORT, Q_LONG, p.legato)]);
    tuned[which] = tuning(p);
}

function tuningOf(p) {
    var freqs = [], gains = [];
    for (var i = 0; i < 6; i++) {
        var note = p.chord[i] || 0, weight = p.weights[i] || 0;
        var used = note > 0 && weight >= MIN_WEIGHT;
        freqs.push(used ? fold(mtof(note + c.octave)) : EMPTY_FREQ);
        gains.push(used ? weight : 0);
    }
    return { freqs: freqs, gains: gains };
}

function tuning(p) {
    var t = tuningOf(p);
    var parts = [];
    for (var i = 0; i < 6; i++) { parts.push(Math.round(t.freqs[i] * 10) + ":" + Math.round(t.gains[i] * 100)); }
    return parts.join(" ");
}

function fold(hz) {
    while (hz < c.lo) { hz *= 2; }
    while (hz > c.hi) { hz /= 2; }
    return hz;
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
