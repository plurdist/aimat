// Spec for chain_voice_roles.js: v1's voice with a role from the uilleann pipes.
//   regulators (Player 1): the full chord in pulsed stabs      drones (Player 2): root and fifth, low, long
//   chanter (Player 3): one note at a time, with grace-note flicks
// Run: node tools/test_voice_roles.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };
const near = (a, b, tol = 1e-6) => Math.abs(a - b) <= tol;
const mtof = (m) => 440 * Math.pow(2, (m - 69) / 12);
const pc = (hz) => ((Math.round(12 * Math.log2(hz / 440)) + 69) % 12 + 12) % 12;
const seeded = (s) => () => { s = (s * 16807) % 2147483647; return (s - 1) / 2147483646; };

function voice(role) {
  const out = [], tasks = [];
  const ctx = { outlet: (i, ...a) => out.push(a.length === 1 && Array.isArray(a[0]) ? a[0] : a), post: () => {}, Math, Task: function () {} };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_voice_roles.js"), "utf8"), ctx);
  let clock = 1e6;
  ctx.random = seeded(5); ctx.now = () => clock; ctx.later = (fn, ms) => tasks.push({ fn, at: clock + ms });
  ctx.role(role);
  const all = (name, ...sub) => out.filter(o => o[0] === name && sub.every((s, i) => o[i + 1] === s));
  const last = (name, ...sub) => all(name, ...sub).pop();
  // run time forward, firing scheduled tasks in order
  const run = (ms) => { const end = clock + ms; for (;;) { tasks.sort((a, b) => a.at - b.at); const t = tasks[0]; if (!t || t.at > end) break; tasks.shift(); clock = t.at; t.fn(); } clock = end; };
  return { v: ctx, out, all, last, run, clear: () => { out.length = 0; }, now: () => clock };
}
function profile(o = {}) {
  const p = Object.assign({ notes: 8, chord: [60, 64, 67, 0, 0, 0], weights: [1, 0.5, 0.5, 0, 0, 0],
    register: 64, range: 12, density: 3, legato: 0.5, velocity: 0.7, jagged: 3, regularity: 0.9 }, o);
  const args = [];
  for (const k of Object.keys(p)) { args.push(k); args.push(...(Array.isArray(p[k]) ? p[k] : [p[k]])); }
  return args;
}
const arrive = (v, o) => v.arrive(...profile(o));
const heard = (msg) => { const f = msg.slice(3); return f; };
const activeFreqs = (all, bank) => {
  const f = all(bank, "freq").pop(), g = all(bank, "gain").pop();
  return f ? f.slice(3).filter((_, i) => g[3 + i] > 0) : [];
};
const stabs = (all) => all("gate").filter(o => o[1] === 1);

// ---------------------------------------------------------------- drones (Player 2)
{ const { v, all, last } = voice("drones"); arrive(v);
  const f = activeFreqs(all, "bankA");
  check("drones: only the root and fifth of the chord (C and G, no E)", f.length >= 2 && f.every(x => [0, 7].includes(pc(x))) && f.some(x => pc(x) === 0) && f.some(x => pc(x) === 7), JSON.stringify(f.map(pc)));
  check("… low (55–220 Hz)", f.every(x => x >= 55 && x <= 220), JSON.stringify(f));
  check("… arrive with a slow fade-in (8 s)", last("level")[2] >= 8000);
  check("… no pulses: the gate stays open", all("gate").every(o => o[1] === 1 && o.length === 3));
}
{ const { v: d, last: ld } = voice("drones"), { v: r, last: lr } = voice("regulators");
  arrive(d); arrive(r);
  check("drones ring longer than the regulators (higher Q)", ld("bankA", "QAll")[2] > lr("bankA", "QAll")[2]);
}

// ---------------------------------------------------------------- regulators (Player 1)
{ const { v, all, run, clear } = voice("regulators"); arrive(v);
  const f = activeFreqs(all, "bankA");
  check("regulators: the full chord (C, E and G)", [0, 4, 7].every(c => f.some(x => pc(x) === c)), JSON.stringify(f.map(pc)));
  check("… arrive with a stab straight away", stabs(all).length === 1);
  clear(); run(10000);
  const count = stabs(all).length;
  check("… then pulse: about 1 stab per second for a phrase of 3 notes/s", count >= 7 && count <= 14, count);
  const g = stabs(all)[0];
  check("… each stab hits and decays (gate 1 → low)", g.length === 5 && g[3] < 0.5 && g[4] > 50, JSON.stringify(g));
}
{ const busy = voice("regulators"), sparse = voice("regulators");
  arrive(busy.v, { density: 12 }); arrive(sparse.v, { density: 1 });
  busy.clear(); sparse.clear(); busy.run(10000); sparse.run(10000);
  check("a busier phrase pulses faster", stabs(busy.all).length > stabs(sparse.all).length, `${stabs(busy.all).length} vs ${stabs(sparse.all).length}`);
}
{ const gaps = (regularity) => {
    const { v, out, run, clear, now } = voice("regulators"); arrive(v, { regularity });
    const times = []; clear();
    const t0 = now();
    for (let i = 0; i < 400; i++) { run(50); if (out.some(o => o[0] === "gate" && o[1] === 1)) times.push(now() - t0); out.length = 0; }
    const d = times.slice(1).map((t, i) => t - times[i]);
    const mean = d.reduce((a, b) => a + b, 0) / d.length;
    return Math.sqrt(d.reduce((a, b) => a + (b - mean) ** 2, 0) / d.length) / mean;
  };
  check("a regular phrase pulses evenly; an irregular one stumbles", gaps(0) > gaps(1) + 0.1, `${gaps(1)} vs ${gaps(0)}`);
}
{ const { v, all, run, clear } = voice("regulators"); arrive(v);
  v.release(); clear(); run(10000);
  check("after PASS the regulators stop pulsing", stabs(all).length === 0);
  v.failed(); clear(); run(5000);
  check("… and start again if the pass fails", stabs(all).length > 0);
}

// ---------------------------------------------------------------- chanter (Player 3)
{ const { v, all, run, clear } = voice("chanter"); arrive(v, { jagged: 0 }); run(100);   // after the arrival flick
  const one = (bank) => all(bank, "gain").pop().slice(3).filter(g => g > 0).length;
  check("chanter: one note at a time", one("bankA") === 1 && one("bankB") === 1);
  const sung = new Set();
  clear();
  for (let i = 0; i < 60; i++) {
    run(500);
    for (const b of ["bankA", "bankB"]) { const f = activeFreqs(all, b); f.forEach(x => sung.add(pc(x))); }
  }
  check("… moving through the phrase's notes (C, E, G)", [...sung].every(c => [0, 4, 7].includes(c)) && sung.size === 3, JSON.stringify([...sung]));
  check("… high (350–1400 Hz)", ["bankA", "bankB"].every(b => activeFreqs(all, b).every(x => x >= 350 && x <= 1400)));
  check("… each note change is a quick crossfade, not a click", all("xfade").every(o => o[2] > 0 && o[2] <= 200));
}
{ const notesIn = (density) => { const { v, all, run, clear } = voice("chanter"); arrive(v, { density, jagged: 0 }); clear(); run(10000); return all("xfade").length; };
  check("a busier phrase sings more notes", notesIn(10) > notesIn(1), `${notesIn(1)} vs ${notesIn(10)}`);
}
{ const { v, all, run, clear } = voice("chanter");
  const flicks = (jagged) => { arrive(v, { jagged }); clear(); run(20000); return all("xfade").filter(o => o[2] <= 30).length; };
  const plain = flicks(0), leapy = flicks(16);
  check("grace-note flicks (very quick switches) come with a leapy phrase", leapy > plain, `${plain} vs ${leapy}`);
}
{ const { v, all } = voice("chanter"); arrive(v);
  check("chanter arrives with an ornament (a flick straight away)", all("xfade").some(o => o[2] <= 30));
}
{ const { v, all, run, clear } = voice("chanter"); arrive(v); v.release(); clear(); run(10000);
  check("after PASS the chanter holds its last note", all("xfade").length === 0);
}

// ---------------------------------------------------------------- shared with v1
{ const { v, last, clear } = voice("regulators"); v.floor(0.15);
  arrive(v, { velocity: 1 }); const held = last("level")[1];
  clear(); v.release();
  check("every role: PASS thins, then settles to the floor", last("level")[1] < held && near(last("level")[3], 0.15));
  v.panic(); check("every role: panic silences", last("level")[1] === 0);
}
{ const { last } = voice("chanter");
  check("knobs as in v1: the chanter's grains sit an octave up", last("grains", "transpose")[2] === 12);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
