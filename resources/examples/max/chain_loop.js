// chain_loop.js: sets [groove~] loop points and the de-click fade.
// In:
//   duration <ms>        buffer length (the Musika seconds x 1000)
//   hits <n>             snap loop: how many drum hits the loop spans
//   arm                  snap loop: catch the next hit as the start, end N hits later
//   onset <phase 0-1>    snap loop: a drum hit happened at this playback phase
//   slice <pos> <ms>     manual loop: slice at pos (0-1) of the buffer, size in ms (0 = off)
//   release              back to looping the whole buffer
// Out: 0 loop start ms, 1 loop end ms, 2 fade slope (loop length / fade length),
//      3 status text (as "set ..." for a message box)

autowatch = 1;
inlets = 1;
outlets = 4;

var bufferMs = 20000;
var hitCount = 4;
var prerollMs = 10;   // start the loop just before the transient
var fadeMs = 8;       // fade at each loop edge, so the join doesn't click

var armed = 0;
var counted = 0;
var startMs = 0;
var loopStart = 0;
var loopEnd = 20000;

function duration(ms) {
    bufferMs = Math.max(1, ms);
    release();
}

function hits(n) {
    hitCount = Math.max(1, Math.round(n));
    status(armed ? "armed: waiting for a hit" : "loop spans " + hitCount + " hits");
}

function arm() {
    armed = 1;
    counted = 0;
    setLoop(0, bufferMs);
    status("armed: waiting for a hit");
}

function release() {
    armed = 0;
    setLoop(0, bufferMs);
    status("full loop");
}

function onset(phase) {
    if (!armed) {
        return;
    }
    var position = Math.max(0, phase * bufferMs - prerollMs);
    if (counted === 0 || position <= startMs + 20) {
        // first hit, or playback wrapped past the end of the buffer: start again here
        startMs = position;
        counted = 1;
        status("counting hits 0/" + hitCount);
        return;
    }
    counted += 1;
    if (counted <= hitCount) {
        status("counting hits " + (counted - 1) + "/" + hitCount);
        return;
    }
    armed = 0;
    setLoop(startMs, position);
    status("looping " + hitCount + " hits (" + Math.round(position - startMs) + " ms)");
}

function slice(pos, sizeMs) {
    armed = 0;
    if (sizeMs <= 0) {
        release();
        return;
    }
    var start = Math.max(0, Math.min(1, pos)) * bufferMs;
    var end = Math.min(bufferMs, start + sizeMs);
    setLoop(start, end);
    status("window " + Math.round(sizeMs) + " ms");
}

// Send the new points in an order that never leaves start >= end.
function setLoop(start, end) {
    outlet(2, (end - start) / fadeMs);
    if (start >= loopEnd) {
        outlet(1, end);
        outlet(0, start);
    } else {
        outlet(0, start);
        outlet(1, end);
    }
    loopStart = start;
    loopEnd = end;
}

function status(text) {
    outlet(3, "set", text);
}
