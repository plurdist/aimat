// chain_grains.js: turns one player's generation (MIDI) into grain decisions.
// Pitch is ignored as pitch: the note number says WHERE in the source the grains read,
// note on/off makes the cloud swell and fade, velocity sets how loud.
// In:  character dust|drift|glass   size <ms>   spray <0-1>   tail <ms>
//      pitch <semitones>   steps <0|1> (snap pitch to octaves and fifths)
//      srclen <ms>   list <note> <velocity> (from midiparse)   panic
// Out: 0 position: "<ms> <glide ms>" for line~      1 level: "<0-1> <ramp ms>" for line~
//      2 grain rate Hz (phasor~)                     3 span ms (how much audio one grain reads)
//      4 spray ms (random scatter)                   5 latest grain start ms (keeps grains inside the clip)

autowatch = 1;
inlets = 1;
outlets = 6;

var CHARACTERS = {
    dust:  { size: 40,  spray: 0.6, ratio: 1,   attack: 30,  tail: 800 },
    drift: { size: 400, spray: 0.1, ratio: 0.5, attack: 400, tail: 3000 },
    glass: { size: 120, spray: 0.3, ratio: 2,   attack: 120, tail: 1500 }
};
var STEPS = [-24, -17, -12, -5, 0, 7, 12, 19, 24];
var GLIDE_MS = 300;

var c = CHARACTERS.dust;
var sizeMs = c.size, sprayAmt = c.spray, tailMs = c.tail, semis = 0, stepped = 0;
var srcMs = 20000, position = 0.5, held = 0;

function character(name) {
    if (!CHARACTERS.hasOwnProperty(name)) { post("chain_grains: unknown character " + name + "\n"); return; }
    c = CHARACTERS[name];
    sizeMs = c.size; sprayAmt = c.spray; tailMs = c.tail;
    update();
}
function size(ms) { sizeMs = clamp(ms, 10, 2000); update(); }
function spray(v) { sprayAmt = clamp(v, 0, 1); update(); }
function tail(ms) { tailMs = clamp(ms, 20, 10000); }
function pitch(s) { semis = clamp(s, -24, 24); update(); }
function steps(on) { stepped = on ? 1 : 0; update(); }
function srclen(ms) { srcMs = Math.max(100, ms); update(); }
function panic() { held = 0; outlet(1, [0, 50]); }

function list(note, velocity) {
    if (velocity > 0) {
        held += 1;
        position = clamp((note - 24) / 84, 0, 1);
        outlet(0, [position * maxStart(), GLIDE_MS]);
        outlet(1, [0.8 * Math.pow(velocity / 127, 0.7), c.attack]);
    } else if (held > 0) {
        held -= 1;
        if (held === 0) { outlet(1, [0, tailMs]); }
    }
}

function ratio() {
    var s = semis;
    if (stepped) {
        var best = STEPS[0];
        for (var i = 1; i < STEPS.length; i++) { if (Math.abs(STEPS[i] - s) < Math.abs(best - s)) { best = STEPS[i]; } }
        s = best;
    }
    return c.ratio * Math.pow(2, s / 12);
}
function span() { return sizeMs * ratio(); }
function maxStart() { return Math.max(0, srcMs - span()); }

function update() {
    outlet(2, 1000 / sizeMs);
    outlet(3, span());
    outlet(4, sprayAmt * 1500);
    outlet(5, maxStart());
    outlet(0, [position * maxStart(), GLIDE_MS]);
}

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
