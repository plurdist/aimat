// chain_relay_clouds_v2.js: a phrase handed between three players, read as a phrase profile,
// and sculpted by whoever holds it (AIM2-66).
//
//   NEW SOURCE ──► Basic Pitch ──► profile of generation 0 lands on PLAYER 1 (their cloud swells)
//   the holder sculpts it (register, pace, focus, leap) ──► AIMAT reshapes it ──► their cloud follows
//   the holder presses PASS ──► their cloud is released (thins, settles to the floor)
//   ──► the Continuator continues the sculpted phrase, mutated by their twist
//   ──► the continuation's profile lands on the next player ──► … (1 → 2 → 3 → 1)
//
// The listener (AIM2-65) sends /phrase_profile <path> key value … after each MIDI result;
// Max passes it in here as: profile <path> key value …
//
// In (from Max):
//   source <wav>          Musika source audio is ready → transcribe it
//   profile <path> …      a phrase profile (generation 0 after NEW SOURCE, or the answer to a pass)
//   sculpt <player> <key> <value>   register (semitones) | pace (x) | focus (0-1: all notes → 2) | leap (x)
//   shaped <path> …       the profile of the holder's phrase as sculpted (/shape_profile)
//   pass <player>         a player pressed PASS (only the player whose turn it is counts)
//   twist <player> <0-1>  how much that player's passes mutate the phrase
//   density <0-1>         how many notes Basic Pitch hears in the source
//   autopass <0|1>        1 = the holder passes automatically after AUTOPASS_MS
//   aimat <status text>   AIMAT's status line (a Continuator error = the pass failed)
//   failed                the pass failed
//   ddsp_every <n>        render every nth generation with MIDI-DDSP (0 = never)
//   ddsp_done             MIDI-DDSP finished
//   reset                 forget the current phrase
// Out:
//   0  OSC messages for AIMAT (to [s aimat_send])
//   1  voice commands: <player> arrive|reshape <profile…> | <player> release | <player> failed
//   2  status text ("set …" for a message box)
//   3  generation number
//   4  whose turn it is (0 = nobody, 1-3)

autowatch = 1;
inlets = 1;
outlets = 5;

var PLAYERS = 3;
var INSTRUMENTS = ["violin", "viola", "cello", "flute", "oboe", "clarinet",
                   "saxophone", "bassoon", "trumpet", "horn", "trombone", "tuba"];
var NOTE_NAMES = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "Ab", "A", "Bb", "B"];
var MIN_REQUEST_GAP_MS = 1500;  // never ask the Continuator more often than this
var ANSWER_TIMEOUT_MS = 15000;  // after this long without an answer, PASS works again
var AUTOPASS_MS = 25000;        // auto-pass: how long each phrase is held
var DDSP_TIMEOUT_MS = 180000;

var twists = [0, 0.3, 0.3, 0.3];  // per player, index 1-3
// key: [lowest, highest, neutral]; focus arrives as 0-1 and is sent as how many pitch classes to keep
var SHAPE = { register: [-24, 24, 0], pace: [0.25, 4, 1], focus: [2, 12, 12], leap: [0.25, 2, 1] };
var shapes = [null, neutralShape(), neutralShape(), neutralShape()];
var densityAmount = 0.5;
var autoPass = 0;
var ddspEvery = 0;

var generation = -1;
var holder = 0;                 // whose turn it is (0 = nobody yet)
var lastHolder = 0;
var phrasePath = "";            // the phrase the holder has
var waiting = 0;                // a pass is in flight
var awaitingSeed = 0;           // NEW SOURCE was pressed; generation 0 is on its way
var lastRequestAt = -1e12;
var ddspBusySince = 0;

var random = Math.random;       // replaceable in tests
var now = function () { return new Date().getTime(); };
var pendingTask = null;         // kept so the scheduled Task isn't garbage-collected
var later = function (fn, ms) { pendingTask = new Task(fn); pendingTask.schedule(ms); };

// ---------------------------------------------------------------------
// settings
// ---------------------------------------------------------------------
function twist(player, v) {
    if (player >= 1 && player <= PLAYERS) {
        twists[player] = clamp(v, 0, 1);
    }
}
function density(v) { densityAmount = clamp(v, 0, 1); }
function autopass(v) { autoPass = v ? 1 : 0; }
function ddsp_every(n) { ddspEvery = Math.max(0, Math.round(n)); }

// ---------------------------------------------------------------------
// sculpting: the holder reshapes the phrase they hold
// ---------------------------------------------------------------------
function sculpt(player, key, value) {
    if (!(player >= 1 && player <= PLAYERS) || !SHAPE.hasOwnProperty(key)) {
        return;
    }
    var v = Number(value);
    if (key === "focus") { v = 12 - 10 * clamp(v, 0, 1); }
    if (key === "register" || key === "focus") { v = Math.round(v); }
    shapes[player][key] = clamp(v, SHAPE[key][0], SHAPE[key][1]);
    if (player === holder && !waiting && phrasePath) {
        askShape(player);
    }
}

// /shape_profile: the holder's phrase as sculpted → their cloud
function shaped(path) {
    if (String(path) !== phrasePath || !holder || waiting) {
        return;
    }
    outlet(1, [holder, "reshape"].concat(Array.prototype.slice.call(arguments, 1)));
}

function askShape(player) {
    outlet(0, ["/shape_phrase", phrasePath].concat(shapeArgs(player)));
}

function shapeArgs(player) {
    var s = shapes[player];
    return ["register", s.register, "pace", s.pace, "focus", s.focus, "leap", s.leap];
}

function neutralShape() { return { register: 0, pace: 1, focus: 12, leap: 1 }; }

function isNeutral(player) {
    var s = shapes[player];
    for (var key in SHAPE) { if (s[key] !== SHAPE[key][2]) { return false; } }
    return true;
}

function describeShape(player) {
    var s = shapes[player], parts = [];
    if (s.register) { parts.push("register " + (s.register > 0 ? "+" : "") + s.register); }
    if (s.pace !== 1) { parts.push("pace x" + round2(s.pace)); }
    if (s.focus !== 12) { parts.push("focus " + s.focus); }
    if (s.leap !== 1) { parts.push("leap x" + round2(s.leap)); }
    return parts.length ? " · " + parts.join(" · ") : "";
}

function reset() {
    generation = -1;
    holder = 0;
    lastHolder = 0;
    phrasePath = "";
    waiting = 0;
    awaitingSeed = 0;
    outlet(3, 0);
    outlet(4, 0);
    status("ready: NEW SOURCE");
}

// ---------------------------------------------------------------------
// the relay
// ---------------------------------------------------------------------
function source(path) {
    var onset = round2(0.9 - 0.75 * densityAmount);
    var frame = round2(Math.max(0.05, onset - 0.1));
    awaitingSeed = 1;
    outlet(0, ["/trigger_model", "basic_pitch", String(path), "onset", onset, "frame", frame]);
    status("transcribing the source…");
}

// The listener names every continuation <input>_cont_<id>.mid; anything else is a transcription.
function profile(path) {
    var args = Array.prototype.slice.call(arguments, 1);
    var notes = valueOf(args, "notes");
    if (String(path).indexOf("_cont_") >= 0) {
        if (!waiting) {
            return;   // nobody is waiting for this continuation (e.g. a NEW SOURCE happened since)
        }
        if (!notes) {
            failed("the continuation has no notes");
            return;
        }
        generation += 1;
        land(String(path), args);
    } else if (awaitingSeed) {
        awaitingSeed = 0;
        if (!notes) {
            status("the source has no notes: NEW SOURCE (pipes or misc, or more density)");
            return;
        }
        if (holder && !waiting) {
            outlet(1, [holder, "release"]);   // a new source mid-piece: the old phrase lets go
        }
        generation = 0;
        lastHolder = 0;
        land(String(path), args);
    }
    // otherwise nobody asked for this phrase: ignore it
}

// A new phrase lands on the next player.
function land(path, args) {
    waiting = 0;
    phrasePath = path;
    holder = (lastHolder % PLAYERS) + 1;
    lastHolder = holder;
    outlet(1, [holder, "arrive"].concat(args));
    outlet(3, generation);
    outlet(4, holder);
    var text = "gen " + generation + " → PLAYER " + holder + " · " + chordName(args);
    var moved = valueOf(args, "change");
    if (moved !== undefined) { text += " · change " + round2(moved); }
    status(text);
    if (!isNeutral(holder)) {
        askShape(holder);    // their sculpting applies to the phrase they've just received
    }
    if (autoPass) {
        var mine = generation, who = holder;
        later(function () {
            if (autoPass && generation === mine && holder === who && !waiting) { pass(who); }
        }, AUTOPASS_MS);
    }
}

function pass(player) {
    if (player !== holder || generation < 0 || !phrasePath) {
        return;   // not your turn
    }
    if (waiting && now() - lastRequestAt < ANSWER_TIMEOUT_MS) {
        return;   // already passing
    }
    if (now() - lastRequestAt < MIN_REQUEST_GAP_MS) {
        return;
    }
    waiting = 1;
    lastRequestAt = now();
    outlet(1, [player, "release"]);
    var request = ["/trigger_model", "continuator", phrasePath].concat(mutate(twists[player]));
    if (!isNeutral(player)) {
        request = request.concat(shapeArgs(player));    // the Continuator learns from the sculpted phrase
    }
    outlet(0, request);
    maybeRender(generation + 1);
    outlet(4, 0);
    status("PLAYER " + player + " passed (twist " + round2(twists[player]) + describeShape(player) + ") → continuing…");
}

// AIMAT's status line: a Continuator error means the pass failed.
function aimat(text) {
    var t = String(text);
    if (t.indexOf("continuator Error") === 0 || t.indexOf("Error running continuator") === 0) {
        failed();
    } else if (awaitingSeed && (t.indexOf("basic_pitch Error") === 0 || t.indexOf("Error running basic_pitch") === 0)) {
        awaitingSeed = 0;
        status("transcription failed: NEW SOURCE again");
    }
}

function failed(reason) {
    if (!waiting) {
        return;
    }
    waiting = 0;
    outlet(1, [holder, "failed"]);
    outlet(4, holder);
    status((reason ? reason + ": " : "the pass failed: ") + "PLAYER " + holder + ", press PASS again");
}

function maybeRender(upcoming) {
    if (!ddspEvery || upcoming % ddspEvery !== 0) {
        return;
    }
    if (ddspBusySince && now() - ddspBusySince < DDSP_TIMEOUT_MS) {
        return;
    }
    ddspBusySince = now();
    outlet(0, ["/trigger_model", "midi_ddsp", phrasePath, pick(INSTRUMENTS)]);
}

function ddsp_done() { ddspBusySince = 0; }

// ---------------------------------------------------------------------
// mutation: the passer's twist decides how far the next phrase strays
// ---------------------------------------------------------------------
function mutate(c) {
    var kmax = clampInt(lerp(6, 1, c) + (random() * 2 - 1) * (1 + 2 * c), 1, 12);
    var anchors = random() < c ? 0 : clampInt(lerp(5, 0, c) + (random() * 2 - 1) * 2, 0, 32);
    var transposition = random() < 0.8 * c ? 1 : 0;
    var mode = random() < 0.5 * c ? "freeform" : "continue";
    var seedFrom = random() < c ? pick(["start", "middle", "end"]) : "end";
    var decay = random() < c ? pick(["full", "late", "middle", "early"]) : pick(["late", "full"]);
    var shortest = lerp(24, 8, c);
    var longest = lerp(60, 140, c);
    var length = clampInt(shortest + random() * (longest - shortest), 1, 500);
    var tempo = random() < 0.6 * c ? clampInt(40 + random() * 180, 20, 400) : -1;
    return ["kmax", kmax, "anchors", anchors, "transposition", transposition, "mode", mode,
            "seed_from", seedFrom, "decay", decay, "length", length, "tempo", tempo];
}

// ---------------------------------------------------------------------
// helpers
// ---------------------------------------------------------------------
// the value after `key` in a profile (chord and weights are 6 values; others one)
function valueOf(args, key) {
    for (var i = 0; i < args.length; i++) {
        if (String(args[i]) === key) { return Number(args[i + 1]); }
        if (args[i] === "chord" || args[i] === "weights") { i += 6; } else { i += 1; }
    }
    return undefined;
}

function chordName(args) {
    for (var i = 0; i < args.length; i++) {
        if (args[i] === "chord") {
            var names = [];
            for (var k = 1; k <= 6; k++) {
                var note = Number(args[i + k]);
                if (note > 0) { names.push(NOTE_NAMES[note % 12]); }
            }
            return names.join(" ");
        }
    }
    return "";
}

function status(text) { outlet(2, ["set", text]); }
function lerp(a, b, t) { return a + (b - a) * t; }
function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function clampInt(v, lo, hi) { return clamp(Math.round(v), lo, hi); }
function round2(v) { return Math.round(v * 100) / 100; }
function pick(list) { return list[Math.floor(random() * list.length) % list.length]; }
