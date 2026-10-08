// chain_shaper.js: reshapes transcribed MIDI so it sits musically.
// In:  "pitch velocity" lists from [midiparse] (velocity 0 = note off),
//      plus settings: octave, fold, base, scale, key, keep, panic.
// Out: "midievent <status> <pitch> <velocity>" messages for [vst~].
//
// Each input note remembers the pitch it was mapped to, so its note-off always
// matches, even if settings change while it's held. Nothing gets stuck.

autowatch = 1;
inlets = 1;
outlets = 1;

var SCALES = {
    off: null,
    minpent: [0, 3, 5, 7, 10],
    dorian: [0, 2, 3, 5, 7, 9, 10],
    wholetone: [0, 2, 4, 6, 8, 10],
    major: [0, 2, 4, 5, 7, 9, 11]
};

var octaveShift = 0;   // octaves up (+) or down (-)
var folding = 0;       // 1 = squeeze every note into one octave above `foldBase`
var foldBase = 60;
var scaleName = "off";
var root = 0;          // 0 = C, 2 = D, 9 = A ...
var keepPct = 100;     // chance (%) that a note is played at all

var held = {};         // input pitch -> output pitch (-1 = dropped)
var sounding = {};     // output pitch -> how many inputs are holding it

function octave(n) { octaveShift = Math.round(n); }
function fold(on) { folding = on ? 1 : 0; }
function base(n) { foldBase = clampNote(Math.round(n)); }
function key(n) { root = ((Math.round(n) % 12) + 12) % 12; }
function keep(pct) { keepPct = Math.max(0, Math.min(100, pct)); }

function scale(name) {
    if (SCALES.hasOwnProperty(name)) {
        scaleName = name;
    } else {
        post("chain_shaper: unknown scale " + name + "\n");
    }
}

function list(pitch, velocity) {
    if (velocity > 0) {
        noteOn(pitch, velocity);
    } else {
        noteOff(pitch);
    }
}

function noteOn(pitch, velocity) {
    if (held.hasOwnProperty(pitch)) {
        noteOff(pitch);
    }
    if (Math.random() * 100 >= keepPct) {
        held[pitch] = -1;
        return;
    }
    var out = transform(pitch);
    held[pitch] = out;
    sounding[out] = (sounding[out] || 0) + 1;
    outlet(0, "midievent", 144, out, velocity);
}

function noteOff(pitch) {
    if (!held.hasOwnProperty(pitch)) {
        return;
    }
    var out = held[pitch];
    delete held[pitch];
    if (out < 0) {
        return;
    }
    sounding[out] -= 1;
    if (sounding[out] <= 0) {
        delete sounding[out];
        outlet(0, "midievent", 128, out, 0);
    }
}

function panic() {
    for (var out in sounding) {
        outlet(0, "midievent", 128, Number(out), 0);
    }
    held = {};
    sounding = {};
    outlet(0, "midievent", 176, 123, 0);
}

function transform(pitch) {
    var out = pitch + 12 * octaveShift;
    if (folding) {
        out = foldBase + mod12(out - foldBase);
    }
    var degrees = SCALES[scaleName];
    if (degrees) {
        out = snap(out, degrees);
    }
    return clampNote(out);
}

// Move a pitch to the nearest note of the scale (ties go down).
function snap(pitch, degrees) {
    var pc = mod12(pitch - root);
    var best = pc;
    var bestDistance = 99;
    for (var i = 0; i < degrees.length; i++) {
        var candidates = [degrees[i] - 12, degrees[i], degrees[i] + 12];
        for (var j = 0; j < candidates.length; j++) {
            var distance = Math.abs(pc - candidates[j]);
            if (distance < bestDistance || (distance === bestDistance && candidates[j] < best)) {
                best = candidates[j];
                bestDistance = distance;
            }
        }
    }
    return pitch - pc + best;
}

function mod12(n) { return ((n % 12) + 12) % 12; }

function clampNote(n) {
    while (n > 127) { n -= 12; }
    while (n < 0) { n += 12; }
    return n;
}
