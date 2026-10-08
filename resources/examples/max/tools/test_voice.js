// Spec for chain_voice.js: one player's cloud, set by a phrase profile instead of playing the phrase.
// Run: node tools/test_voice.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };
const near = (a, b, tol = 1e-6) => Math.abs(a - b) <= tol;
const mtof = (m) => 440 * Math.pow(2, (m - 69) / 12);
const seeded = (s) => () => { s = (s * 16807) % 2147483647; return (s - 1) / 2147483646; };

function voice(ch) {
  const out = [];
  const ctx = { outlet: (i, ...a) => out.push(a.length === 1 && Array.isArray(a[0]) ? a[0] : a), post: () => {}, Math };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_voice.js"), "utf8"), ctx);
  ctx.random = seeded(7);
  ctx.character(ch);
  const all = (name, ...sub) => out.filter(o => o[0] === name && sub.every((s, i) => o[i + 1] === s));
  const last = (name, ...sub) => all(name, ...sub).pop();
  return { v: ctx, out, all, last, clear: () => { out.length = 0; } };
}

// a phrase profile, as the relay passes it on: arrive key value …
function profile(overrides = {}) {
  const p = Object.assign({ notes: 8, chord: [60, 64, 67, 0, 0, 0], weights: [1, 0.5, 0.5, 0, 0, 0],
    register: 64, range: 12, density: 2, legato: 0.5, velocity: 0.7, jagged: 3, regularity: 0.5 }, overrides);
  const args = [];
  for (const k of Object.keys(p)) { args.push(k); args.push(...(Array.isArray(p[k]) ? p[k] : [p[k]])); }
  return args;
}
const arrive = (v, overrides) => v.arrive(...profile(overrides));
const freqs = (msg) => msg.slice(3);   // bankA freq 0 f1 … f6

// ---------------------------------------------------------------- harmony: resonators tuned to the chord
{ const { v, last, all, clear } = voice("dust");
  check("silent until a phrase arrives", last("level")[1] === 0);
  arrive(v);
  const f = freqs(last("bankA", "freq"));
  check("dust: bank A rings the chord at pitch", near(f[0], mtof(60)) && near(f[1], mtof(64)) && near(f[2], mtof(67)), JSON.stringify(f));
  check("weights set each resonator's gain; padding is silent", JSON.stringify(last("bankA", "gain").slice(3)) === JSON.stringify([1, 0.5, 0.5, 0, 0, 0]));
  check("the first chord is heard straight away (bank A)", last("xfade")[1] === 0);
  clear(); arrive(v, { chord: [62, 65, 69, 72, 0, 0], weights: [1, 0.5, 0.5, 0.8, 0, 0] });
  check("the next chord goes into bank B …", near(freqs(last("bankB", "freq"))[3], mtof(72)) && all("bankA").length === 0);
  check("… and crossfades to it over 4 s (the chord change)", last("xfade")[1] === 1 && last("xfade")[2] === 4000);
  clear(); arrive(v);
  check("the one after goes back into bank A", all("bankA", "freq").length === 1 && last("xfade")[1] === 0);
}
{ const { v, last } = voice("drift"); arrive(v);
  check("drift: resonators an octave down", near(freqs(last("bankA", "freq"))[0], mtof(48)));
}
{ const { v, last } = voice("glass"); arrive(v);
  check("glass: resonators an octave up", near(freqs(last("bankA", "freq"))[0], mtof(72)));
}
{ const { v, last, clear } = voice("dust"); arrive(v); clear();
  v.arrive(...profile({ notes: 0, chord: [0, 0, 0, 0, 0, 0], weights: [0, 0, 0, 0, 0, 0] }));
  check("an empty phrase changes nothing", last("bankB") === undefined && last("xfade") === undefined);
}
{ const { v, last } = voice("drift");
  arrive(v, { chord: [28, 31, 35, 0, 0, 0] });   // a very low phrase
  const f = freqs(last("bankA", "freq")).slice(0, 3);
  check("resonators stay in the character's register (drift: 80–330 Hz), same note names", f.every(x => x >= 80 && x <= 330) && near(f[0], mtof(28 - 12) * 4), JSON.stringify(f));
}
{ const { v, last } = voice("dust");
  arrive(v, { chord: [60, 61, 64, 0, 0, 0], weights: [1, 0.1, 0.6, 0, 0, 0] });
  check("chord notes the phrase hardly uses are left out", JSON.stringify(last("bankA", "gain").slice(3)) === JSON.stringify([1, 0, 0.6, 0, 0, 0]));
}
{ const { v, last } = voice("dust");
  arrive(v, { legato: 0 }); const qShort = last("bankA", "QAll")[2];
  arrive(v, { legato: 1 }); const qLong = last("bankB", "QAll")[2];
  check("a legato phrase rings longer (higher Q)", qLong > qShort, `${qShort} vs ${qLong}`);
}

// ---------------------------------------------------------------- texture: grains set by the profile
{ const { v, last } = voice("dust");
  arrive(v, { density: 0.5 }); const sparse = last("grains", "ngrains")[2];
  arrive(v, { density: 6 }); const busy = last("grains", "ngrains")[2];
  check("a busier phrase gives more grains (8 to 24)", busy > sparse && sparse >= 8 && busy <= 24, `${sparse} → ${busy}`);
  arrive(v, { legato: 0 }); const choppy = last("clock")[1];
  arrive(v, { legato: 1 }); const smooth = last("clock")[1];
  check("a legato phrase gives longer grains (slower grain clock)", smooth < choppy, `${choppy} → ${smooth}`);
  arrive(v, { jagged: 0 }); const calm = last("grains", "delayRandom")[2];
  arrive(v, { jagged: 12 }); const leapy = last("grains", "delayRandom")[2];
  check("a leapy phrase scatters the grains further", leapy > calm, `${calm} → ${leapy}`);
  let steady = true;
  for (const r of [0, 0.5, 1]) { arrive(v, { regularity: r }); steady = steady && last("grains", "windowRandom")[2] >= 0.5; }
  check("grains never start on a rigid grid, whatever the phrase (no buzz)", steady);
}
{ const { v, last } = voice("dust");
  arrive(v, { register: 36 }); const low = last("position")[1];
  arrive(v, { register: 96 }); const high = last("position")[1];
  check("the phrase's register picks where in the source the grains read", low < 0.1 && high > 0.9, `${low}, ${high}`);
  arrive(v, { register: 64, regularity: 1 });
  const centre = last("position")[1]; let steadyMax = 0;
  for (let i = 0; i < 50; i++) { v.bang(); steadyMax = Math.max(steadyMax, Math.abs(last("position")[1] - centre)); }
  arrive(v, { register: 64, regularity: 0 }); let wanderMax = 0;
  for (let i = 0; i < 50; i++) { v.bang(); wanderMax = Math.max(wanderMax, Math.abs(last("position")[1] - centre)); }
  check("an irregular phrase wanders through the source more than a regular one", wanderMax > steadyMax, `${steadyMax} vs ${wanderMax}`);
}

// ---------------------------------------------------------------- the player's knobs
{ const { v, last, clear } = voice("dust"); arrive(v);
  v.size(200); const base = last("clock")[1];
  v.size(400); check("size: longer grains, slower clock", near(last("clock")[1], base / 2), `${base} → ${last("clock")[1]}`);
  v.size(10); check("size is at least 20 ms", last("clock")[1] <= 1000 / 20 * 2);
  const before = freqs(last("bankA", "freq"))[0]; clear();
  v.pitch(12);
  check("pitch transposes the grains", last("grains", "transpose")[2] === 12);
  check("pitch leaves the harmony alone", last("bankA") === undefined && near(before, mtof(60)));
  v.steps(1); v.pitch(5); check("steps snaps +5 to a fifth (+7)", last("grains", "transpose")[2] === 7);
  v.ring(0.25); check("ring sets how strongly the cloud sings the chord", last("ring")[1] === 0.25);
}
{ const { last: d } = voice("dust"), { last: g } = voice("glass");
  check("each character starts with its own grain transposition (glass +12)", d("grains", "transpose")[2] === 0 && g("grains", "transpose")[2] === 12);
}

// ---------------------------------------------------------------- the pass: foreground, release, floor
{ const { v, last, all, clear } = voice("dust");
  v.floor(0.15);
  arrive(v, { velocity: 1 });
  const [, held, swell] = last("level");
  check("arriving swells to the foreground over 4 s", held > 0.5 && swell === 4000, JSON.stringify(last("level")));
  check("… and opens the tone", last("bright")[1] > 5000);
  clear(); v.release();
  const lv = last("level"), br = last("bright");
  check("PASS: the cloud thins at once …", lv[1] < held && lv[1] > 0.15 && lv[2] <= 2000, JSON.stringify(lv));
  check("… then settles to the floor over about 20 s", near(lv[3], 0.15) && lv[4] >= 15000 && lv[4] <= 25000, JSON.stringify(lv));
  check("… and darkens", br[1] < 5000 && br[3] < br[1], JSON.stringify(br));
  check("releasing keeps the old chord ringing", all("bankA").length === 0 && all("bankB").length === 0 && all("xfade").length === 0);
  clear(); v.failed();
  check("a failed pass brings the cloud back within 1 s", near(last("level")[1], held) && last("level")[2] <= 1000);
  clear(); v.failed(); v.failed();
  check("failed when nothing was released does nothing", all("level").length === 0);
}
{ const { v, all } = voice("drift");
  v.release(); check("release before anything arrived does nothing", all("level").length === 1);
}
{ const { v, last } = voice("glass"); arrive(v);
  v.panic(); check("panic silences within 50 ms", last("level")[1] === 0 && last("level")[2] <= 50);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
