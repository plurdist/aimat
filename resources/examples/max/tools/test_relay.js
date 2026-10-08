const fs = require("fs"), vm = require("vm");
let ok = true, n = 0;
const check = (label, cond, detail = "") => { n++; console.log((cond ? "PASS " : "FAIL ") + label + (cond ? "" : "  " + detail)); ok = ok && !!cond; };
const seeded = (s) => () => { s = (s * 16807) % 2147483647; return (s - 1) / 2147483646; };
function relay() {
  const out = [];
  const ctx = { outlet: (i, ...a) => out.push([i, ...(a.length === 1 && Array.isArray(a[0]) ? a[0] : a)]), post: () => {}, Math, Number, String, Date, Task: function () {} };
  vm.createContext(ctx); vm.runInContext(fs.readFileSync(require("path").join(__dirname, "..", "chain_relay.js"), "utf8"), ctx);
  let clock = 1e6; ctx.now = () => clock; ctx.later = (fn) => fn(); ctx.random = seeded(11);
  ctx.feedback("/fb.mid");
  return { r: ctx, out, tick: (ms) => { clock += ms; }, get: (k) => vm.runInContext(k, ctx) };
}
const continuations = (out) => out.filter(o => o[0] === 0 && o[2] === "continuator");
const turn = (out) => out.filter(o => o[0] === 4).map(o => o[1]).pop();

{ const { r, out, tick } = relay();
  r.density(0); r.source("/s.wav");
  const bp = out.find(o => o[0] === 0);
  check("source → Basic Pitch with density thresholds", bp && bp[2] === "basic_pitch" && bp[5] === 0.9 && bp[7] === 0.8, JSON.stringify(bp));
  out.length = 0; r.seed("/s.mid");
  check("gen 0 lands on PLAYER 1: load + light 1", out.some(o => o[0] === 1 && o[1] === 1 && o[2] === "load") && turn(out) === 1);
  out.length = 0; tick(5000); r.pass(2); r.pass(3);
  check("only the player whose turn it is can pass", continuations(out).length === 0);
  r.pass(1);
  check("PLAYER 1 passes: saves the phrase, asks the Continuator, light goes off", out.some(o => o[0] === 1 && o[1] === 1 && o[2] === "write") && continuations(out).length === 1 && turn(out) === 0);
  out.length = 0; tick(2000); r.pass(1);
  check("pressing PASS again while it's passing does nothing", continuations(out).length === 0);
  out.length = 0; r.continued("/c1.mid");
  check("the continuation lands on PLAYER 2", out.some(o => o[0] === 1 && o[1] === 2 && o[2] === "load") && turn(out) === 2);
  tick(5000); r.pass(2); r.continued("/c2.mid"); tick(5000); r.pass(3); out.length = 0; r.continued("/c3.mid");
  check("turns go 1 → 2 → 3 → 1", turn(out) === 1);
}
{ const { r, out, tick } = relay();
  r.seed("/s.mid"); tick(5000);
  r.twist(1, 0); r.pass(1);
  const calm = continuations(out)[0];
  r.continued("/c.mid"); tick(5000);
  let wild = 0;
  for (let i = 0; i < 60; i++) { r.twist(2, 1); const before = continuations(out).length; r.pass(r.holder === undefined ? 2 : 2); tick(16000); r.failed(); }
  check("twist 0 gives a faithful continuation (kmax ≥ 4, no 12 keys, not freeform)", calm[calm.indexOf("kmax") + 1] >= 4 && calm[calm.indexOf("transposition") + 1] === 0 && calm[calm.indexOf("mode") + 1] === "continue", JSON.stringify(calm));
  const wilds = continuations(out).slice(1);
  check("twist 1 gives wild continuations (freeform and 12 keys appear)", wilds.some(c => c[c.indexOf("mode") + 1] === "freeform") && wilds.some(c => c[c.indexOf("transposition") + 1] === 1), wilds.length);
}
{ const { r, out, tick } = relay();
  r.seed("/s.mid"); tick(5000); r.pass(1); out.length = 0;
  r.failed();
  check("a failed pass gives the turn back and says so", turn(out) === 1 && out.some(o => o[0] === 2 && /failed/.test(o[2])));
  tick(2000); out.length = 0; r.pass(1);
  check("…and the player can pass again", continuations(out).length === 1);
}
{ const { r, out, tick } = relay();
  r.seed("/s.mid"); tick(5000); r.pass(1); out.length = 0;
  tick(16000); r.pass(1);
  check("if no answer comes within 15 s, PASS works again", continuations(out).length === 1);
}
{ const { r, out, tick } = relay();
  r.seed("/empty.mid"); tick(20); r.ended(1); out.length = 0; tick(5000); r.pass(1);
  check("an empty phrase can't be passed, and the status says why", continuations(out).length === 0 && out.some(o => o[0] === 2 && /no notes/.test(o[2])));
  for (let i = 0; i < 500; i++) { tick(20); r.ended(1); }
  check("an empty phrase looping 500 times triggers nothing", continuations(out).length === 0);
}
{ const { r, out, tick } = relay();
  r.autopass(1); r.seed("/s.mid"); tick(5000); r.ended(1);
  check("autopass: the holder passes when their phrase finishes", continuations(out).length === 1);
  tick(5000); r.ended(2); r.ended(3);
  check("autopass: other players' loops don't pass", continuations(out).length === 1);
  r.autopass(0); r.continued("/c.mid"); tick(5000); out.length = 0; r.ended(2);
  check("autopass off: finishing doesn't pass", continuations(out).length === 0);
}
{ const { r, out, tick } = relay();
  r.ddsp_every(2); r.seed("/s.mid");
  const ddsp = () => out.filter(o => o[0] === 0 && o[2] === "midi_ddsp").length;
  for (let g = 0; g < 4; g++) { tick(5000); r.pass(r.holder !== undefined ? r.holder : vm.runInContext("holder", r)); r.continued("/c.mid"); }
  check("MIDI-DDSP renders every 2nd generation, once while busy", ddsp() === 1, ddsp());
}
{ const { r, out } = relay();
  r.reset();
  check("reset: nobody's turn, generation 0", turn(out) === 0 && out.some(o => o[0] === 3 && o[1] === 0));
  out.length = 0; r.pass(1); r.continued("/x.mid");
  check("after reset, PASS and stray continuations do nothing", out.length === 0, JSON.stringify(out));
}
{ const { r } = relay(); let bad = [];
  for (const c of [0, 0.5, 1]) for (let i = 0; i < 500; i++) { const m = r.mutate(c), s = {}; for (let j = 0; j < m.settings.length; j += 2) s[m.settings[j]] = m.settings[j + 1];
    if (!(Number.isInteger(s.kmax) && s.kmax >= 1 && s.kmax <= 12 && s.anchors >= 0 && s.anchors <= 32 && s.length >= 1 && s.length <= 500 && (s.tempo === -1 || (s.tempo >= 20 && s.tempo <= 400)))) bad.push(s); }
  check("1,500 mutations stay inside what the listener accepts", bad.length === 0, JSON.stringify(bad[0]));
}
{ const { r, out, tick } = relay();
  r.seed("/s.mid"); tick(5000); r.pass(1); out.length = 0;
  r.aimat("basic_pitch transcription complete!");
  check("other AIMAT status messages don't affect the relay", turn(out) === undefined);
  r.aimat("continuator Error: Command '...' returned non-zero exit status 1.");
  check("an AIMAT Continuator error hands the turn back", turn(out) === 1);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
