// Spec for chain_relay_clouds.js: the relay, driven by phrase profiles instead of playing MIDI.
// Run: node tools/test_relay_clouds.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (label, cond, detail = "") => { n++; console.log((cond ? "PASS " : "FAIL ") + label + (cond ? "" : "  " + detail)); ok = ok && !!cond; };
const seeded = (s) => () => { s = (s * 16807) % 2147483647; return (s - 1) / 2147483646; };

function relay() {
  const out = [], tasks = [];
  const ctx = { outlet: (i, ...a) => out.push([i, ...(a.length === 1 && Array.isArray(a[0]) ? a[0] : a)]), post: () => {},
                Math, Number, String, Date, Task: function () {} };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_relay_clouds.js"), "utf8"), ctx);
  let clock = 1e6;
  ctx.now = () => clock; ctx.random = seeded(11);
  ctx.later = (fn, ms) => tasks.push({ fn, ms });   // run with runTasks()
  return { r: ctx, out, tasks, tick: (ms) => { clock += ms; },
           runTasks: () => { const due = tasks.splice(0); due.forEach(t => t.fn()); return due; } };
}
// /phrase_profile <path> key value …, as Max passes it on: profile <path> key value …
const P = (notes = 6, change) => {
  const args = ["notes", notes, "chord", 60, 64, 67, 0, 0, 0, "weights", 1, 0.5, 0.5, 0, 0, 0, "register", 64, "range", 7,
                "density", 2, "legato", 0.5, "velocity", 0.7, "jagged", 3, "regularity", 0.5];
  if (change !== undefined) args.push("change", change);
  return args;
};
const aimat = (out) => out.filter(o => o[0] === 0);
const continuations = (out) => aimat(out).filter(o => o[2] === "continuator");
const toVoice = (out, player, word) => out.filter(o => o[0] === 1 && o[1] === player && o[2] === word);
const turn = (out) => out.filter(o => o[0] === 4).map(o => o[1]).pop();
const status = (out) => out.filter(o => o[0] === 2).map(o => o.slice(2).join(" ")).pop() || "";
const gen = (out) => out.filter(o => o[0] === 3).map(o => o[1]).pop();

{ const { r, out, tick } = relay();
  r.density(0); r.source("/s.wav");
  const bp = aimat(out)[0];
  check("source → Basic Pitch with density thresholds", bp && bp[2] === "basic_pitch" && bp[5] === 0.9 && bp[7] === 0.8, JSON.stringify(bp));
  out.length = 0; r.source("/s.wav"); r.profile("/s.mid", ...P());
  const a = toVoice(out, 1, "arrive")[0];
  check("gen 0's profile lands on PLAYER 1: arrive with the profile", a && a[3] === "notes" && a.includes("chord") && turn(out) === 1 && gen(out) === 0, JSON.stringify(a));
  out.length = 0; tick(5000); r.pass(2); r.pass(3);
  check("only the player whose turn it is can pass", continuations(out).length === 0);
  r.pass(1);
  const c = continuations(out)[0];
  check("PASS: PLAYER 1's cloud is released at once", toVoice(out, 1, "release").length === 1);
  check("… and the Continuator continues the phrase PLAYER 1 holds (no re-saving)", c && c[3] === "/s.mid", JSON.stringify(c));
  check("… nobody's turn while it's passing", turn(out) === 0);
  out.length = 0; tick(2000); r.pass(1);
  check("pressing PASS again while it's passing does nothing", continuations(out).length === 0);
  out.length = 0; r.profile("/s_cont_1.mid", ...P(6, 0.4));
  check("the continuation lands on PLAYER 2", toVoice(out, 2, "arrive").length === 1 && turn(out) === 2 && gen(out) === 1);
  check("the status says how far the harmony moved", /PLAYER 2/.test(status(out)) && /change 0\.4/.test(status(out)), status(out));
  tick(5000); out.length = 0; r.pass(2);
  check("the next pass continues the phrase PLAYER 2 now holds", continuations(out)[0][3] === "/s_cont_1.mid");
  r.profile("/s_cont_2.mid", ...P(6, 0.1)); tick(5000); r.pass(3); out.length = 0; r.profile("/s_cont_3.mid", ...P(6, 0.2));
  check("turns go 1 → 2 → 3 → 1", turn(out) === 1 && gen(out) === 3);
}
{ const { r, out } = relay();
  r.source("/s.wav"); out.length = 0; r.profile("/s.mid", ...P(0));
  check("an empty transcription: nobody's turn, and the status asks for a new source", turn(out) === undefined || turn(out) === 0);
  check("… status mentions NEW SOURCE", /NEW SOURCE/.test(status(out)), status(out));
  check("… nobody is sent an empty phrase", out.every(o => o[0] !== 1));
}
{ const { r, out, tick } = relay();
  r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000); r.pass(1); r.profile("/s_cont_1.mid", ...P());
  tick(5000); r.pass(2); out.length = 0;
  r.source("/s2.wav"); r.profile("/s2.mid", ...P());
  check("NEW SOURCE mid-piece: generation 0 lands on PLAYER 1", toVoice(out, 1, "arrive").length === 1 && turn(out) === 1 && gen(out) === 0);
  out.length = 0; r.profile("/s_cont_2.mid", ...P());
  check("… and the answer to the pass that was in flight is ignored", out.every(o => o[0] !== 1));
}
{ const { r, out, tick } = relay();
  r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000);
  out.length = 0; r.profile("/stray.mid", ...P());
  check("a profile nobody asked for (no pass in flight) is ignored", out.every(o => o[0] !== 1));
}
{ const { r, out, tick } = relay();
  r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000); r.pass(1);
  out.length = 0; r.aimat("continuator Error: something broke");
  check("a Continuator error: PLAYER 1's cloud comes back and it's their turn again", toVoice(out, 1, "failed").length === 1 && turn(out) === 1);
  tick(2000); out.length = 0; r.pass(1);
  check("… and PASS works again", continuations(out).length === 1);
  out.length = 0; r.aimat("continuator Error: can't read the MIDI file → /c.mid");
  check("an unreadable continuation also counts as a failed pass", toVoice(out, 1, "failed").length === 1 && turn(out) === 1);
  tick(2000); r.pass(1); out.length = 0; r.profile("/s_cont_x.mid", ...P(0));
  check("an empty continuation is a failed pass too: PLAYER 1 keeps the phrase", toVoice(out, 1, "failed").length === 1 && turn(out) === 1 && out.every(o => !(o[0] === 1 && o[2] === "arrive")));
}
{ const { r, out, tick } = relay();
  r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000); r.pass(1); out.length = 0;
  tick(16000); r.pass(1);
  check("if no answer comes within 15 s, PASS works again", continuations(out).length === 1);
}
{ const { r, out, tick, tasks, runTasks } = relay();
  r.autopass(1); r.source("/s.wav"); r.profile("/s.mid", ...P());
  const timer = tasks.find(t => t.ms >= 10000);
  check("auto-pass: a phrase that lands is passed on after a while", timer !== undefined, JSON.stringify(tasks.map(t => t.ms)));
  tick(timer ? timer.ms : 0); out.length = 0; runTasks();
  check("… which asks the Continuator", continuations(out).length === 1);
  r.autopass(0); r.profile("/s_cont_1.mid", ...P()); tick(60000); out.length = 0; runTasks();
  check("auto-pass off: nothing passes by itself", continuations(out).length === 0);
}
{ const { r, out, tick } = relay();
  r.ddsp_every(2); r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000); r.pass(1); r.profile("/s_cont_1.mid", ...P());
  out.length = 0; tick(5000); r.pass(2);
  const ddsp = aimat(out).filter(o => o[2] === "midi_ddsp");
  check("MIDI-DDSP renders every nth generation from the phrase being passed", ddsp.length === 1 && ddsp[0][3] === "/s_cont_1.mid", JSON.stringify(ddsp));
}
{ const { r, out, tick } = relay();
  r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000);
  r.twist(1, 0); r.pass(1);
  const calm = continuations(out)[0];
  check("twist 0 gives a faithful continuation (kmax ≥ 4, no 12 keys, not freeform)",
        calm[calm.indexOf("kmax") + 1] >= 4 && calm[calm.indexOf("transposition") + 1] === 0 && calm[calm.indexOf("mode") + 1] === "continue", JSON.stringify(calm));
}
{ const { r, out, tick } = relay();
  r.source("/s.wav"); r.profile("/s.mid", ...P()); tick(5000); r.pass(1);
  out.length = 0; r.reset();
  check("reset: nobody's turn, generation 0, ready for a new source", turn(out) === 0 && gen(out) === 0 && /NEW SOURCE/.test(status(out)));
  out.length = 0; r.profile("/s_cont_late.mid", ...P());
  check("… and a late answer to the old pass is ignored", out.every(o => o[0] !== 1));
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
