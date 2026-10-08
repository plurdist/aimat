// chain_relay.js: a phrase handed between three players.
//
//   Musika source ──► Basic Pitch ──► generation 0 lands on the next player (their light comes on)
//   that player plays it until they press PASS ──► the Continuator continues it,
//   mutated by the passer's twist ──► the next generation lands on the next player ──► …
//
// In (from Max):
//   source <wav>          Musika source audio is ready → transcribe it
//   seed <mid>            transcription ready → generation 0
//   continued <mid>       a continuation is ready → next generation
//   pass <player>         a player pressed PASS (only the player whose turn it is counts)
//   twist <player> <0-1>  how much that player's passes mutate the phrase
//   density <0-1>         how many notes Basic Pitch hears in the source
//   autopass <0|1>        1 = the holder passes automatically each time their phrase finishes
//   ended <player>        that player's sequence finished one play-through
//   aimat <status text>   AIMAT's status line (a Continuator error = the pass failed)
//   failed                the pass failed
//   ddsp_every <n>        render every nth generation with MIDI-DDSP (0 = never)
//   ddsp_done             MIDI-DDSP finished
//   feedback <path>       MIDI file the voices save into (in Basic Pitch's output folder)
//   reset                 forget the current phrase
// Out:
//   0  OSC messages for AIMAT (to [s aimat_send])
//   1  voice commands: <player> speed|octave|load|write <value>
//   2  status text ("set …" for a message box)
//   3  generation number
//   4  whose turn it is (0 = nobody, 1-3)

autowatch = 1;
inlets = 1;
outlets = 5;

var PLAYERS = 3;
var INSTRUMENTS = ["violin", "viola", "cello", "flute", "oboe", "clarinet",
                   "saxophone", "bassoon", "trumpet", "horn", "trombone", "tuba"];
var FEEDBACK_DELAY_MS = 150;    // let the voice finish saving before the Continuator reads it
var MIN_PHRASE_MS = 300;        // a phrase that ends sooner than this has no notes
var MIN_REQUEST_GAP_MS = 1500;  // never ask the Continuator more often than this
var ANSWER_TIMEOUT_MS = 15000;  // after this long without an answer, PASS works again
var DDSP_TIMEOUT_MS = 180000;

var twists = [0, 0.3, 0.3, 0.3];  // per player, index 1-3
var densityAmount = 0.5;
var autoPass = 0;
var ddspEvery = 0;
var feedbackFile = "";

var generation = -1;
var holder = 0;                 // whose turn it is (0 = nobody yet)
var lastHolder = 0;
var waiting = 0;                // a pass is in flight
var empty = 0;                  // the holder's phrase has no notes
var startedAt = 0;
var lastRequestAt = -1e12;
var next = null;
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
function feedback(path) { feedbackFile = String(path); }

function reset() {
    generation = -1;
    holder = 0;
    waiting = 0;
    empty = 0;
    next = null;
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
    outlet(0, ["/trigger_model", "basic_pitch", String(path), "onset", onset, "frame", frame]);
    status("transcribing the source…");
}

function seed(path) {
    generation = 0;
    land(String(path), { speed: 1024, octave: 0 }, "the transcription");
}

function continued(path) {
    if (!waiting) {
        return;
    }
    generation += 1;
    var made = next || { playback: { speed: 1024, octave: 0 }, settings: [] };
    land(String(path), made.playback, describe(made.settings, made.playback));
}

// A new phrase lands on the next player.
function land(path, playback, description) {
    waiting = 0;
    empty = 0;
    startedAt = now();
    holder = (lastHolder % PLAYERS) + 1;
    lastHolder = holder;
    outlet(1, [holder, "speed", playback.speed]);
    outlet(1, [holder, "octave", playback.octave]);
    outlet(1, [holder, "load", path]);
    outlet(3, generation);
    outlet(4, holder);
    status("gen " + generation + " → PLAYER " + holder + " · " + description);
}

function pass(player) {
    if (player !== holder || generation < 0 || !feedbackFile) {
        return;   // not your turn
    }
    if (waiting && now() - lastRequestAt < ANSWER_TIMEOUT_MS) {
        return;   // already passing
    }
    if (now() - lastRequestAt < MIN_REQUEST_GAP_MS) {
        return;
    }
    if (empty) {
        status("PLAYER " + holder + "'s phrase has no notes: NEW SOURCE (pipes or misc, or more density)");
        return;
    }
    waiting = 1;
    lastRequestAt = now();
    outlet(1, [player, "write", feedbackFile]);
    next = mutate(twists[player]);
    var message = ["/trigger_model", "continuator", feedbackFile].concat(next.settings);
    var upcoming = generation + 1;
    later(function () {
        outlet(0, message);
        maybeRender(upcoming);
    }, FEEDBACK_DELAY_MS);
    outlet(4, 0);
    status("PLAYER " + player + " passed (twist " + round2(twists[player]) + ") → continuing…");
}

function ended(player) {
    if (player !== holder || waiting) {
        return;
    }
    if (now() - startedAt < MIN_PHRASE_MS) {
        empty = 1;
        status("PLAYER " + holder + "'s phrase has no notes: NEW SOURCE (pipes or misc, or more density)");
        return;
    }
    if (autoPass) {
        pass(player);
    }
}

// AIMAT's status line: a Continuator error means the pass failed.
function aimat(text) {
    if (String(text).indexOf("continuator Error") === 0) {
        failed();
    }
}

function failed() {
    if (!waiting) {
        return;
    }
    waiting = 0;
    outlet(4, holder);
    status("the pass failed: PLAYER " + holder + ", press PASS again");
}

function maybeRender(upcoming) {
    if (!ddspEvery || upcoming % ddspEvery !== 0) {
        return;
    }
    if (ddspBusySince && now() - ddspBusySince < DDSP_TIMEOUT_MS) {
        return;
    }
    ddspBusySince = now();
    outlet(0, ["/trigger_model", "midi_ddsp", feedbackFile, pick(INSTRUMENTS)]);
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
    return {
        settings: ["kmax", kmax, "anchors", anchors, "transposition", transposition, "mode", mode,
                   "seed_from", seedFrom, "decay", decay, "length", length, "tempo", tempo],
        playback: {
            speed: random() < 0.5 * c ? pick([512, 768, 1536, 2048]) : 1024,
            octave: random() < c ? pick([-1, 0, 1, 2]) : 0
        }
    };
}

function describe(settings, playback) {
    var s = {};
    for (var i = 0; i + 1 < settings.length; i += 2) {
        s[settings[i]] = settings[i + 1];
    }
    var parts = ["kmax " + s.kmax];
    if (s.transposition) { parts.push("12 keys"); }
    if (s.mode === "freeform") { parts.push("freeform"); }
    parts.push(s.length + " notes");
    if (s.tempo > 0) { parts.push(s.tempo + " bpm"); }
    if (playback.speed !== 1024) { parts.push("x" + round2(playback.speed / 1024)); }
    if (playback.octave) { parts.push((playback.octave > 0 ? "+" : "") + playback.octave + " oct"); }
    return parts.join(" · ");
}

// ---------------------------------------------------------------------
// helpers
// ---------------------------------------------------------------------
function status(text) { outlet(2, ["set", text]); }
function lerp(a, b, t) { return a + (b - a) * t; }
function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function clampInt(v, lo, hi) { return clamp(Math.round(v), lo, hi); }
function round2(v) { return Math.round(v * 100) / 100; }
function pick(list) { return list[Math.floor(random() * list.length) % list.length]; }
