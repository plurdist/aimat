// chain_strip.js: one mixer strip's insert effects and sends, with optional slow drift.
// In:  drive | crush | shift | reso | evolve <0-1>
//      filter <-1..1>        DJ filter: left = low-pass closing, right = high-pass opening, 0 = open
//      rev | dly <0-1>       send amounts
//      wash | echo <0-1>     global macros added on top of every strip's sends
//      bang                  a tick (~10 per second) for the drift
// Out: 0 overdrive~ drive factor   1 degrade~ sample-rate ratio   2 degrade~ bits
//      3 freqshift~ Hz            4 filtercoeff~ frequency Hz    5 filtercoeff~ Q
//      6 filtercoeff~ type (lowpass | highpass)                  7 reverb send   8 delay send
// With every dial at 0 the strip is transparent.

autowatch = 1;
inlets = 1;
outlets = 9;

var LIMITS = { drive: [0, 1], crush: [0, 1], shift: [0, 1], filter: [-1, 1] };
var base = { drive: 0, crush: 0, shift: 0, filter: 0 };
var offset = { drive: 0, crush: 0, shift: 0, filter: 0 };
var resonance = 0;
var evolveAmount = 0;
var sends = { rev: 0.2, dly: 0 };
var macros = { wash: 0, echo: 0 };
var sent = [];

var random = Math.random;   // replaceable in tests

function drive(v) { base.drive = clamp(v, 0, 1); update(); }
function crush(v) { base.crush = clamp(v, 0, 1); update(); }
function shift(v) { base.shift = clamp(v, 0, 1); update(); }
function filter(v) { base.filter = clamp(v, -1, 1); update(); }
function reso(v) { resonance = clamp(v, 0, 1); update(); }
function evolve(v) { evolveAmount = clamp(v, 0, 1); }
function rev(v) { sends.rev = clamp(v, 0, 1); update(); }
function dly(v) { sends.dly = clamp(v, 0, 1); update(); }
function wash(v) { macros.wash = clamp(v, 0, 1); update(); }
function echo(v) { macros.echo = clamp(v, 0, 1); update(); }

// One tick: each effect wanders a little around where its dial is set.
function bang() {
    var reach = 0.5 * evolveAmount;
    for (var key in offset) {
        if (evolveAmount > 0) {
            offset[key] = offset[key] * 0.995 + (random() * 2 - 1) * 0.03 * evolveAmount;
            offset[key] = clamp(offset[key], -reach, reach);
        } else {
            offset[key] *= 0.9;
        }
    }
    update();
}

function update() {
    var d = amount("drive");
    var c = amount("crush");
    var s = amount("shift");
    var f = amount("filter");
    send(0, 1 + 29 * d * d);
    send(1, 1 - 0.97 * c);
    send(2, Math.round(24 - 21 * c));
    send(3, 1200 * s * s);
    if (f <= 0) {
        // low-pass: 20 kHz (open) down to 80 Hz
        send(6, "lowpass");
        send(4, 20000 * Math.pow(80 / 20000, -f));
    } else {
        // high-pass: 20 Hz (open) up to 6 kHz
        send(6, "highpass");
        send(4, 20 * Math.pow(6000 / 20, f));
    }
    send(5, 0.707 + 8 * resonance * resonance);
    send(7, clamp(sends.rev + macros.wash, 0, 1));
    send(8, clamp(sends.dly + macros.echo, 0, 1));
}

function amount(key) { return clamp(base[key] + offset[key], LIMITS[key][0], LIMITS[key][1]); }

function send(i, value) {
    var previous = sent[i];
    var changed = typeof value === "string" ? value !== previous
        : previous === undefined || Math.abs(value - previous) > 1e-4 * Math.max(1, Math.abs(value));
    if (changed) {
        sent[i] = value;
        outlet(i, value);
    }
}

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
