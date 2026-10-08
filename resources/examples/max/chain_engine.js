// chain_engine.js: runs the chain reaction.
//
//   Musika source audio ──► Basic Pitch ──► generation 0 (the transcription)
//   each generation plays once on the next voice, then the Continuator continues it
//   with freshly mutated settings ──► the next generation ──► …
//
// In (from Max):
//   chaos <0-1>        how wildly each generation's settings may differ
//   density <0-1>      how many notes Basic Pitch hears in the source (0 sparse, 1 dense)
//   drift <0|1>        1 = keep feeding back; 0 = stop after the current generation
//   ddsp_every <n>     render every nth generation with MIDI-DDSP (0 = never)
//   feedback <path>    MIDI file the voices save into (must be in Basic Pitch's output folder)
//   source <wav>       Musika source audio is ready
//   seed <mid>         Basic Pitch transcription is ready
//   continued <mid>    a continuation is ready
//   ddsp_done          MIDI-DDSP finished
//   ended <voice>      a voice finished playing its sequence once
//   advance            continue from the current generation right now
//   reset              forget the current chain
// Out:
//   0  OSC messages for AIMAT (to [s aimat_send])
//   1  voice commands: <voice> speed|octave|load|write <value>
//   2  status text ("set …" for a message box)
//   3  generation number

autowatch = 1;
inlets = 1;
outlets = 4;

var VOICES = 3;
var INSTRUMENTS = ["violin", "viola", "cello", "flute", "oboe", "clarinet",
                   "saxophone", "bassoon", "trumpet", "horn", "trombone", "tuba"];
var FEEDBACK_DELAY_MS = 150;   // let the voice finish saving before the Continuator reads it
var MAX_RETRIES = 3;           // loops of a stuck generation before giving up
var MIN_GENERATION_MS = 300;   // a generation that ends sooner than this has no notes
var MIN_REQUEST_GAP_MS = 1500; // never ask the Continuator more often than this
var DDSP_TIMEOUT_MS = 180000;

var chaosAmount = 0.3;
var densityAmount = 0.5;
var drifting = 1;
var ddspEvery = 4;
var feedbackFile = "";

var generation = -1;
var currentVoice = 0;
var waitingForContinuation = 0;
var retries = 0;
var next = null;               // settings and playback of the generation being made
var ddspBusySince = 0;
var stalled = 0;               // stays stopped until a new source, a continuation, reset or "next now"
var startedAt = 0;
var lastRequestAt = -1e12;

var random = Math.random;      // replaceable in tests
var now = function () { return new Date().getTime(); };
var pendingTask = null;        // kept so the scheduled Task isn't garbage-collected
var later = function (fn, ms) { pendingTask = new Task(fn); pendingTask.schedule(ms); };

// ---------------------------------------------------------------------
// settings from the interface
// ---------------------------------------------------------------------
function chaos(v) { chaosAmount = clamp(v, 0, 1); }
function density(v) { densityAmount = clamp(v, 0, 1); }
function drift(v) { drifting = v ? 1 : 0; }
function ddsp_every(n) { ddspEvery = Math.max(0, Math.round(n)); }
function feedback(path) { feedbackFile = String(path); }

function reset() {
    generation = -1;
    waitingForContinuation = 0;
    retries = 0;
    next = null;
    stalled = 0;
    outlet(3, 0);
    status("ready: generate a source");
}

// ---------------------------------------------------------------------
// the chain
// ---------------------------------------------------------------------
function source(path) {
    // density 0 → strict thresholds (few notes), 1 → loose (a swarm)
    var onset = round2(0.9 - 0.75 * densityAmount);
    var frame = round2(Math.max(0.05, onset - 0.1));
    outlet(0, ["/trigger_model", "basic_pitch", String(path), "onset", onset, "frame", frame]);
    status("transcribing the source (density " + round2(densityAmount) + ")");
}

function seed(path) {
    generation = 0;
    startGeneration(String(path), { speed: 1024, octave: 0 }, "the transcription");
}

function continued(path) {
    if (!waitingForContinuation) {
        return;
    }
    generation += 1;
    var made = next || { playback: { speed: 1024, octave: 0 }, settings: [] };
    startGeneration(String(path), made.playback, describe(made.settings, made.playback));
}

function startGeneration(path, playback, description) {
    waitingForContinuation = 0;
    retries = 0;
    stalled = 0;
    startedAt = now();
    currentVoice = (currentVoice % VOICES) + 1;
    outlet(1, [currentVoice, "speed", playback.speed]);
    outlet(1, [currentVoice, "octave", playback.octave]);
    outlet(1, [currentVoice, "load", path]);
    outlet(3, generation);
    status("gen " + generation + " → voice " + currentVoice + " · " + description);
}

function ended(voice) {
    if (voice !== currentVoice || !drifting || stalled) {
        return;
    }
    if (now() - startedAt < MIN_GENERATION_MS) {
        // an empty sequence finishes the moment it starts: don't feed nothing back
        stall("gen " + generation + " has no notes: try pipes or misc, or raise density, then NEW SOURCE");
        return;
    }
    continueFrom(voice);
}

function stall(reason) {
    stalled = 1;
    waitingForContinuation = 0;
    status(reason);
}

// Save the voice's generation and ask the Continuator to continue it.
function continueFrom(voice) {
    if (generation < 0 || !feedbackFile || now() - lastRequestAt < MIN_REQUEST_GAP_MS) {
        return;
    }
    if (waitingForContinuation) {
        // the voice looped again and no continuation came back: try new settings
        retries += 1;
        if (retries > MAX_RETRIES) {
            stall("chain stalled at gen " + generation + ": NEW SOURCE or next generation now");
            return;
        }
    }
    waitingForContinuation = 1;
    lastRequestAt = now();
    outlet(1, [voice, "write", feedbackFile]);
    next = mutate();
    var message = ["/trigger_model", "continuator", feedbackFile].concat(next.settings);
    var upcoming = generation + 1;
    later(function () {
        outlet(0, message);
        maybeRender(upcoming);
    }, FEEDBACK_DELAY_MS);
    status("gen " + generation + " → continuing…" + (retries ? " (retry " + retries + ")" : ""));
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

// Move on now instead of waiting for the current generation to finish playing.
function advance() {
    if (generation < 0) {
        return;
    }
    stalled = 0;
    continueFrom(currentVoice);
}

// ---------------------------------------------------------------------
// mutation: new settings for every generation
// ---------------------------------------------------------------------
function mutate() {
    var c = chaosAmount;
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
    if (s.anchors) { parts.push(s.anchors + " anchors"); }
    if (s.seed_from && s.seed_from !== "end") { parts.push("from " + s.seed_from); }
    if (s.decay) { parts.push(s.decay); }
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
