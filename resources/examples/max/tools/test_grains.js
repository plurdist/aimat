const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };
function voice(ch) {
  const out = []; const ctx = { outlet: (i, ...a) => out.push([i, ...(a.length === 1 && Array.isArray(a[0]) ? a[0] : a)]), post: () => {}, Math };
  vm.createContext(ctx); vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_grains.js"), "utf8"), ctx);
  ctx.character(ch); return { g: ctx, out, last: (i) => out.filter(o => o[0] === i).pop() };
}
{ const { g, out, last } = voice("dust"); g.srclen(20000);
  check("dust: 40 ms grains → 25 Hz", last(2)[1] === 25);
  g.list(24, 100); check("lowest note reads from the start", last(0)[1] === 0);
  g.list(108, 100); check("highest note reads near the end, leaving room for a whole grain", Math.abs(last(0)[1] - (20000 - 40)) < 1e-6, last(0)[1]);
  check("note on swells the cloud", last(1)[1] > 0);
  g.list(108, 0); check("one note still held: no fade yet", last(1)[1] > 0);
  g.list(24, 0); check("last note off fades over the tail", last(1)[1] === 0 && last(1)[2] === 800);
  g.list(60, 0); check("a stray note-off doesn't go negative", last(1)[1] === 0);
}
{ const { g, last } = voice("drift"); g.srclen(20000);
  check("drift: long grains, an octave down (span = 400 × 0.5)", last(2)[1] === 2.5 && last(3)[1] === 200);
  g.pitch(12); check("pitch +12 doubles the span", last(3)[1] === 400);
  g.steps(1); g.pitch(5); check("steps snaps +5 to the nearest octave/fifth (+7)", Math.abs(last(3)[1] - 200 * Math.pow(2, 7 / 12)) < 1e-6);
  g.steps(0); check("free pitch keeps +5", Math.abs(last(3)[1] - 200 * Math.pow(2, 5 / 12)) < 1e-6);
}
{ const { g, out, last } = voice("glass"); g.srclen(20000);
  check("glass: 120 ms grains, an octave up (span 240)", Math.abs(last(3)[1] - 240) < 1e-9);
  g.size(5000); check("size is limited to 2 s", last(2)[1] === 0.5);
  g.srclen(1000); check("short clip: grains never start past the end", last(5)[1] === 0);
  g.panic(); check("panic silences quickly", last(1)[1] === 0 && last(1)[2] === 50);
  g.character("nope"); check("unknown character is ignored", last(3) !== undefined);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
