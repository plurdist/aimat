// chain_mixer.js: the MIXER window (aimat_relay_clouds_mix.maxpat). Dials in two grids set matrix~ gains.
//
// Output grid (matrix~ 9 3): which sources each speaker plays.
//   rows:    V1 V2 V3 (each voice, mono) · REVL REVR · DLYL DLYR (the effect returns) · DDSP · BED
//   columns: S1 S2 S3 (speakers)
// Sends grid (matrix~ 5 2, one for left and one for right): how much of each source feeds the effects.
//   rows:    V1 V2 V3 DDSP BED      columns: REV DLY
//
// In:  out <row> <speaker> <gain>   send <row> <fx> <gain>   wash <0-1>   echo <0-1>
//      reset   (puts every dial back to the default routing; the dials then report back here)
// Out: 0  "<inlet> <outlet> <gain>" for the output matrix~
//      1  "<inlet> <outlet> <gain>" for both sends matrix~ objects (left and right)

autowatch = 1;
inlets = 1;
outlets = 2;

var ROWS = ["V1", "V2", "V3", "REVL", "REVR", "DLYL", "DLYR", "DDSP", "BED"];
var SPEAKERS = ["S1", "S2", "S3"];
var SEND_ROWS = ["V1", "V2", "V3", "DDSP", "BED"];
var FX = ["REV", "DLY"];

// v1's routing: your voice in your speaker; the room spread left / middle / right
var DEFAULT_OUT = {
    V1: [1, 0, 0], V2: [0, 1, 0], V3: [0, 0, 1],
    REVL: [1, 0.5, 0], REVR: [0, 0.5, 1], DLYL: [1, 0.5, 0], DLYR: [0, 0.5, 1],
    DDSP: [1, 1, 1], BED: [1, 1, 1]
};
var DEFAULT_SEND = { V1: [0.2, 0], V2: [0.2, 0], V3: [0.2, 0], DDSP: [0.2, 0], BED: [0.2, 0] };

var sends = {};          // "row fx" → the dial's value
var macros = [0, 0];     // WASH (reverb), ECHO (delay)

function out(row, speaker, gain) {
    var r = ROWS.indexOf(String(row)), s = SPEAKERS.indexOf(String(speaker));
    if (r < 0 || s < 0) { return; }
    outlet(0, [r, s, clamp(gain, 0, 1.5)]);
}

function send(row, fx, gain) {
    var r = SEND_ROWS.indexOf(String(row)), f = FX.indexOf(String(fx));
    if (r < 0 || f < 0) { return; }
    sends[r + " " + f] = clamp(gain, 0, 1);
    emitSend(r, f);
}

function wash(v) { macros[0] = clamp(v, 0, 1); emitAll(0); }
function echo(v) { macros[1] = clamp(v, 0, 1); emitAll(1); }

function reset() {
    var row, k;
    for (row in DEFAULT_OUT) {
        for (k = 0; k < SPEAKERS.length; k++) { messnamed("mix_" + row + "_" + SPEAKERS[k], DEFAULT_OUT[row][k]); }
    }
    for (row in DEFAULT_SEND) {
        for (k = 0; k < FX.length; k++) { messnamed("mix_" + row + "_" + FX[k], DEFAULT_SEND[row][k]); }
    }
}

function emitAll(f) {
    for (var r = 0; r < SEND_ROWS.length; r++) {
        if (sends.hasOwnProperty(r + " " + f)) { emitSend(r, f); }
    }
}

function emitSend(r, f) {
    outlet(1, [r, f, clamp(sends[r + " " + f] + macros[f], 0, 1)]);
}

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, Number(v))); }
