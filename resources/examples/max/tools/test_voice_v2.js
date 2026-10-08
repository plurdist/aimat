// Spec for chain_voice_v2.js: one player's cloud, Microsound-style grains, reshaped live by sculpting.
// Run: node tools/test_voice_v2.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };
const near = (a, b, tol = 1e-6) => Math.abs(a - b) <= tol;
const mtof = (m) => 440 * Math.pow(2, (m - 69) / 12);
const seeded = (s) => () => { s = (s * 16807) % 2147483647; return (s - 1) / 2147483646; };

function voice(ch) {
  const out = [], tasks = [];
  const ctx = { outlet: (i, ...a) => out.push(a.length === 1 && Array.isArray(a[0]) ? a[0] : a), post: () => {}, Math, Task: function () {} };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_voice_v2.js"), "utf8"), ctx);
  let clock = 1e6;
  ctx.random = seeded(7); ctx.now = () => clock; ctx.later = (fn, ms) => tasks.push({ fn, at: clock + ms });
  ctx.character(ch);
  const all = (name, ...sub) => out.filter(o => o[0] === name && sub.every((s, i) => o[i + 1] === s));
  const last = (name, ...sub) => all(name, ...sub).pop();
  const tick = (ms) => { clock += ms; const due = tasks.filter(t => t.at <= clock); due.forEach(t => { tasks.splice(tasks.indexOf(t), 1); t.fn(); }); };
  return { v: ctx, out, all, last, tick, clear: () => { out.length = 0; } };
}
function profile(overrides = {}) {
  const p = Object.assign({ notes: 8, chord: [60, 64, 67, 0, 0, 0], weights: [1, 0.5, 0.5, 0, 0, 0],
    register: 64, range: 24, density: 6, legato: 0.5, velocity: 0.4, jagged: 8, regularity: 0.3 }, overrides);
  const args = [];
  for (const k of Object.keys(p)) { args.push(k); args.push(...(Array.isArray(p[k]) ? p[k] : [p[k]])); }
  return args;
}
const arrive = (v, o) => v.arrive(...profile(o));
const reshape = (v, o) => v.reshape(...profile(o));
const freqs = (msg) => msg.slice(3);
const grainPitches = (all) => all("grains", "g").filter(o => o[3] === "transpose").map(o => o[4]);

// ---------------------------------------------------------------- harmony (as v1)
{ const { v, last, all, clear } = voice("dust");
  check("silent until a phrase arrives", last("level")[1] === 0);
  arrive(v);
  check("bank A rings the chord", near(freqs(last("bankA", "freq"))[1], mtof(64)) && last("xfade")[1] === 0);
  clear(); arrive(v, { chord: [62, 65, 69, 0, 0, 0] });
  check("a new phrase goes into bank B and crossfades over 4 s", near(freqs(last("bankB", "freq"))[0], mtof(62)) && last("xfade")[1] === 1 && last("xfade")[2] === 4000 && all("bankA").length === 0);
}
{ const { v, last } = voice("drift"); arrive(v, { chord: [28, 31, 35, 0, 0, 0] });
  check("resonators stay in the character's register (drift 80–330 Hz)", freqs(last("bankA", "freq")).slice(0, 3).every(f => f >= 80 && f <= 330));
}

// ---------------------------------------------------------------- Microsound grains
{ const { v, last } = voice("dust"); arrive(v);
  v.size(800);
  const longest = 1000 / last("clock")[1];
  check("size sets the longest grain (the grain clock)", longest > 600 && longest < 1300, longest);
  arrive(v, { legato: 0 }); const choppy = last("grains", "spaceRandom")[2];
  arrive(v, { legato: 1 }); const smooth = last("grains", "spaceRandom")[2];
  check("every grain has its own length: a staccato phrase varies them more", choppy > smooth && smooth > 0 && choppy < 1, `${choppy} vs ${smooth}`);
}
{ const { v, last } = voice("dust"); v.srclen(20000);
  arrive(v, { range: 6 }); const narrow = last("grains", "delayRandom")[2];
  arrive(v, { range: 36 }); const wide = last("grains", "delayRandom")[2];
  check("the start window is wider for a phrase with a wider range", wide > narrow, `${narrow} vs ${wide}`);
  v.spray(0); check("spray 0: grains start from (almost) one spot", last("grains", "delayRandom")[2] < 0.02 * 20000);
  v.spray(1); const sprayed = last("grains", "delayRandom")[2];
  v.srclen(40000); check("the window scales with the source's length", near(last("grains", "delayRandom")[2], 2 * sprayed, 1e-6));
  const pos = last("position")[1], width = last("grains", "delayRandom")[2] / 40000;
  check("the window stays inside the source", pos <= 1 && pos - width >= -1e-9, `${pos} ${width}`);
}
{ const { v, all, clear } = voice("dust");
  arrive(v);   // chord C E G: intervals from C are 0, +4, -5 (G folded down)
  const first = grainPitches(all);
  check("coin toss: each of the 24 grains gets its own pitch", first.length === 24);
  const allowed = new Set([0, 4, -5, -12, -24]);
  let seen = [...first];
  for (let i = 0; i < 40; i++) { clear(); v.bang(); seen = seen.concat(grainPitches(all)); }
  check("… drawn from the chord's intervals and octaves down (dust)", seen.every(t => allowed.has(t)), JSON.stringify([...new Set(seen)]));
  const count = (t) => seen.filter(x => x === t).length;
  check("… unison most often, then chord tones, octave down sometimes", count(0) > count(4) && count(4) > 0 && count(-12) > 0, `0:${count(0)} 4:${count(4)} -12:${count(-12)}`);
  clear(); v.bang();
  check("each tick re-tosses the coins", JSON.stringify(grainPitches(all)) !== JSON.stringify(first));
}
{ const { v, all } = voice("glass"); arrive(v);
  check("glass sits an octave up (pitches around +12)", grainPitches(all).every(t => t >= 0));
}
{ const { v, last } = voice("dust");
  arrive(v, { jagged: 0 }); const calm = last("grains", "direction")[2];
  arrive(v, { jagged: 16 }); const leapy = last("grains", "direction")[2];
  check("some grains play backwards; more for a leapy phrase", calm < 1 && leapy < calm, `${calm} → ${leapy}`);
}
{ const { last: d } = voice("drift"), { last: g } = voice("glass");
  check("grains pan across the stereo field (glass widest)", g("pan", "panSpread")[2] > d("pan", "panSpread")[2]);
}

// ---------------------------------------------------------------- sculpting: reshape the phrase you hold
{ const { v, last, all, clear, tick } = voice("dust");
  arrive(v); tick(5000); clear();
  reshape(v, { density: 30 });
  check("reshaping changes the texture at once", last("grains", "ngrains")[2] > 16);
  check("… a reshape with the same chord leaves the resonators alone", all("bankA").length === 0 && all("bankB").length === 0);
  clear(); reshape(v, { chord: [62, 66, 69, 0, 0, 0] });
  check("a reshaped chord crossfades into the other bank over 1.2 s", near(freqs(last("bankB", "freq"))[0], mtof(62)) && last("xfade")[1] === 1 && last("xfade")[2] === 1200);
  clear(); tick(100); reshape(v, { chord: [64, 67, 71, 0, 0, 0] }); tick(100); reshape(v, { chord: [65, 69, 72, 0, 0, 0] });
  check("reshapes during a crossfade wait for it to finish (no clicks)", all("bankA").length === 0 && all("xfade").length === 0);
  tick(1200);
  check("… then the latest one is applied", near(freqs(last("bankA", "freq"))[0], mtof(65)) && last("xfade")[1] === 0 && all("bankA", "freq").length === 1);
}
{ const { v, last, all, clear, tick } = voice("dust");
  arrive(v); arrive(v, { chord: [62, 65, 69, 0, 0, 0] }); clear(); tick(50);
  reshape(v, { chord: [62, 66, 69, 0, 0, 0] });
  check("a reshape just after arriving retunes the incoming bank in place (it's still silent)", near(freqs(last("bankB", "freq"))[1], mtof(66)) && all("xfade").length === 0);
}
{ const { v, all, clear } = voice("dust");
  arrive(v); v.release(); clear();
  reshape(v, { density: 30, chord: [62, 66, 69, 0, 0, 0] });
  check("after PASS, reshapes are ignored (the phrase has gone)", all("grains").length === 0 && all("bankB").length === 0);
}

// ---------------------------------------------------------------- the pass (as v1)
{ const { v, last, clear } = voice("dust"); v.floor(0.15);
  arrive(v, { velocity: 1 }); const held = last("level")[1];
  check("arriving swells to the foreground over 4 s", held > 0.5 && last("level")[2] === 4000);
  clear(); v.release(); const lv = last("level");
  check("PASS: thins at once, then settles to the floor over ~20 s", lv[1] < held && lv[2] <= 2000 && near(lv[3], 0.15) && lv[4] >= 15000);
  clear(); v.failed(); check("a failed pass brings it back", near(last("level")[1], held));
  v.panic(); check("panic silences", last("level")[1] === 0 && last("level")[2] <= 50);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
