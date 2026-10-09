// chain_inherit.js (aimat_relay_clouds_inherit.maxpat): you inherit how the last player played.
//
// While a player holds the phrase, their own voice (after their shaping, before the fader, without the
// shared reverb/delay) is recorded into a generation buffer. When the next phrase lands, the next player's
// grains read that recording, and the phrase profile shapes it as always. NEW SOURCE resets the chain:
// everyone goes back to the fresh Musika audio.
//
// In:  voice <player> arrive|release|failed …   (the relay's voice commands, tapped)
//      newsource                                (Musika finished: a new source)
//      inherit <0|1>                            (0 = everyone plays from the Musika source)
// Out: voice <player> buf <buffer>         → that voice's grainflow~ (which audio its grains read)
//      label <player> <text…>              → the panel: where that player's audio came from
//      rec <player> set <buffer> | append <0|1> | <1|0>   → that player's record~
//      buffer <slot> size <ms> | clear | crop 0 <ms> | normalize 0.9   → buffer~ relay_gen_<slot>

autowatch = 1;
inlets = 1;
outlets = 1;

var PLAYERS = 3;
var SLOTS = 4;                     // generation buffers relay_gen_0 … relay_gen_3
var SOURCE = "relay_source";
var START_AFTER_MS = 2000;         // let the arrival swell pass before recording
var MAX_MS = 60000;                // buffers hold 60 s
var MIN_MS = 1000;                 // less than this isn't worth passing on

var now = function () { return new Date().getTime(); };
var running = [];                  // scheduled Tasks, kept so they aren't garbage-collected before they fire
var later = function (fn, ms) {
    var t = new Task(function () { running.splice(running.indexOf(t), 1); fn(); });
    running.push(t);
    t.schedule(ms);
};

var inheritOn = 1;
var reading = [null, SOURCE, SOURCE, SOURCE];  // the buffer each player's grains read
var take = null;      // the holder's recording: { player, slot, recorded (ms), since (ms, while running), running, token }
var passed = null;    // a finished take waiting for the next phrase: { player, slot, ms, gen }
var fresh = 1;        // the next phrase is generation 0 of a new source
var gen = -1;
var token = 0;

function inherit(on) { inheritOn = on ? 1 : 0; }

function newsource() {
    stopRecording();
    take = null;
    passed = null;
    fresh = 1;
    gen = -1;
    for (var k = 1; k <= PLAYERS; k++) { play(k, SOURCE, "src: new source"); }
}

function voice(player, what) {
    var k = Number(player);
    if (what === "arrive") { arrive(k); }
    else if (what === "release") { release(k); }
    else if (what === "failed") { failed(k); }
}

function arrive(k) {
    gen += 1;
    var from = take ? take.player : 0;
    if (fresh || !inheritOn) {
        play(k, SOURCE, "src: new source");
    } else if (passed) {
        outlet(0, ["buffer", passed.slot, "crop", 0, passed.ms]);
        outlet(0, ["buffer", passed.slot, "normalize", 0.9]);
        play(k, slotName(passed.slot), "src: P" + passed.player + " · gen " + passed.gen);
    } else if (from) {
        play(k, reading[from], "src: as P" + from);    // nothing recorded: carry on with what they had
    } else {
        play(k, SOURCE, "src: new source");
    }
    fresh = 0;
    passed = null;
    startTake(k);
}

function release(k) {
    if (!take || take.player !== k) { return; }
    token += 1;                                       // cancels a start or a 60 s stop still to come
    stopRecording();
    passed = take.recorded >= MIN_MS ? { player: k, slot: take.slot, ms: take.recorded, gen: gen } : null;
}

function failed(k) {
    if (!take || take.player !== k) { return; }
    passed = null;
    if (take.recorded > 0) {
        resume();
    } else {
        scheduleStart(START_AFTER_MS);
    }
}

// ---------------------------------------------------------------------
// recording
// ---------------------------------------------------------------------
function startTake(k) {
    token += 1;
    take = { player: k, slot: freeSlot(), recorded: 0, since: 0, running: 0 };
    scheduleStart(START_AFTER_MS);
}

function scheduleStart(ms) {
    var mine = ++token;
    later(function () {
        if (mine !== token || !take || take.running) { return; }
        outlet(0, ["buffer", take.slot, "size", MAX_MS]);
        outlet(0, ["buffer", take.slot, "clear"]);
        outlet(0, ["rec", take.player, "set", slotName(take.slot)]);
        outlet(0, ["rec", take.player, "append", 0]);
        begin();
    }, ms);
}

function resume() {
    outlet(0, ["rec", take.player, "append", 1]);
    begin();
}

function begin() {
    take.running = 1;
    take.since = now();
    outlet(0, ["rec", take.player, 1]);
    var mine = ++token;
    later(function () {
        if (mine === token && take && take.running) { stopRecording(); }
    }, MAX_MS - take.recorded);
}

function stopRecording() {
    if (!take || !take.running) { return; }
    take.recorded = Math.min(MAX_MS, take.recorded + (now() - take.since));
    take.running = 0;
    outlet(0, ["rec", take.player, 0]);
}

// a generation buffer nobody is playing from (and not the take about to be passed on)
function freeSlot() {
    for (var s = 0; s < SLOTS; s++) {
        var busy = passed && passed.slot === s;
        for (var k = 1; k <= PLAYERS; k++) { if (reading[k] === slotName(s)) { busy = true; } }
        if (!busy) { return s; }
    }
    return 0;
}

// ---------------------------------------------------------------------
// helpers
// ---------------------------------------------------------------------
function play(k, buffer, text) {
    reading[k] = buffer;
    outlet(0, ["voice", k, "buf", buffer]);
    outlet(0, ["label", k].concat(text.split(" ")));
}

function slotName(s) { return "relay_gen_" + s; }
