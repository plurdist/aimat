// Spec for chain_voice_body.js: v1's voice, with each character's resonators shaped as an instrument body.
//   dust: wood (knocky, short ring)   drift: string / drone (even overtones, long ring)   glass: vibraphone + beating pairs
// Run: node tools/test_voice_body.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };
const near = (a, b, tol = 1e-6) => Math.abs(a - b) <= tol;
const mtof = (m) => 440 * Math.pow(2, (m - 69) / 12);

function voice(ch) {
  const out = [];
  const ctx = { outlet: (i, ...a) => out.push(a.length === 1 && Array.isArray(a[0]) ? a[0] : a), post: () => {}, Math };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_voice_body.js"), "utf8"), ctx);
  ctx.character(ch);
  const all = (name, ...sub) => out.filter(o => o[0] === name && sub.every((s, i) => o[i + 1] === s));
  const last = (name, ...sub) => all(name, ...sub).pop();
  return { v: ctx, out, all, last, clear: () => { out.length = 0; } };
}
function profile(o = {}) {
  const p = Object.assign({ notes: 8, chord: [60, 64, 67, 0, 0, 0], weights: [1, 0.5, 0.5, 0, 0, 0],
    register: 64, range: 12, density: 2, legato: 0.5, velocity: 0.7, jagged: 3, regularity: 0.5 }, o);
  const args = [];
  for (const k of Object.keys(p)) { args.push(k); args.push(...(Array.isArray(p[k]) ? p[k] : [p[k]])); }
  return args;
}
const arrive = (v, o) => v.arrive(...profile(o));
// a resonators~ model: freq gain decayrate triples
const triples = (msg) => { const t = []; for (let i = 1; i + 2 < msg.length + 1; i += 3) t.push({ f: msg[i], g: msg[i + 1], d: msg[i + 2] }); return t; };
const hasRatio = (model, f0, ratio) => model.some(r => near(r.f, f0 * ratio, 0.01));

// ---------------------------------------------------------------- the chord, as before
{ const { v, last, all, clear } = voice("dust");
  check("silent until a phrase arrives", last("level")[1] === 0);
  arrive(v);
  const model = triples(last("bankA"));
  check("bank A rings the chord (C, E, G at pitch)", [60, 64, 67].every(m => model.some(r => near(r.f, mtof(m), 0.01))), JSON.stringify(model.slice(0, 3)));
  check("the first chord is heard straight away", last("xfade")[1] === 0);
  clear(); arrive(v, { chord: [62, 65, 69, 0, 0, 0] });
  check("the next chord goes into bank B and crossfades over 4 s", last("bankB") && all("bankA").length === 0 && last("xfade")[1] === 1 && last("xfade")[2] === 4000);
  arrive(v, { chord: [60, 61, 64, 0, 0, 0], weights: [1, 0.1, 0.6, 0, 0, 0] });
  check("chord notes the phrase hardly uses are left out", !triples(last("bankA")).some(r => near(r.f, mtof(61), 0.01)));
}

// ---------------------------------------------------------------- the bodies
{ const { v, last } = voice("dust"); arrive(v);
  const model = triples(last("bankA")), f0 = mtof(60);
  check("dust is wood: overtones at 1.777 and 2.378 of each note", hasRatio(model, f0, 1.777) && hasRatio(model, f0, 2.378));
}
{ const { v, last } = voice("drift"); arrive(v);
  const model = triples(last("bankA")), f0 = mtof(48);
  check("drift is a string: evenly spaced overtones (2x, 3x) an octave down", hasRatio(model, f0, 2) && hasRatio(model, f0, 3), JSON.stringify(model.slice(0, 4)));
}
{ const { v, last } = voice("glass"); arrive(v);
  const model = triples(last("bankA")), f0 = mtof(72);
  check("glass is a vibraphone: an overtone at 2.01, an octave up", hasRatio(model, f0, 2.01));
  check("… with a slightly detuned twin on each note, so it shimmers (beats)", hasRatio(model, f0, 1.0045));
}
{ const ring = (ch) => { const { v, last } = voice(ch); arrive(v); const m = triples(last("bankA")); return m[0].d; };
  check("drift rings longest, dust shortest (decay rate: bigger = shorter)", ring("drift") < ring("glass") && ring("glass") < ring("dust"), `${ring("drift")} ${ring("glass")} ${ring("dust")}`);
}
{ const { v, last } = voice("dust");
  arrive(v, { legato: 0 }); const choppy = triples(last("bankA"))[0].d;
  arrive(v, { legato: 1 }); const smooth = triples(last("bankB"))[0].d;
  check("a legato phrase rings longer", smooth < choppy, `${choppy} → ${smooth}`);
}
{ const { v, last } = voice("glass"); arrive(v, { chord: [100, 0, 0, 0, 0, 0], weights: [1, 0, 0, 0, 0, 0] });
  check("no overtone goes above 16 kHz", triples(last("bankA")).every(r => r.f <= 16000));
}
{ const { last: d } = voice("dust"), { last: r } = voice("drift"), { last: g } = voice("glass");
  check("each body has its own grain shape (dust pluck · drift blackman · glass triangle)",
        d("grains", "env")[2] === "pluck" && r("grains", "env")[2] === "blackman" && g("grains", "env")[2] === "triangle");
}
{ const opened = (ch) => { const { v, last } = voice(ch); arrive(v); return last("bright")[1]; };
  check("brightness: glass brightest, drift darkest", opened("glass") > opened("dust") && opened("dust") > opened("drift"), `${opened("glass")} ${opened("dust")} ${opened("drift")}`);
}

// ---------------------------------------------------------------- everything else is v1
{ const { v, last, all, clear } = voice("dust"); v.floor(0.15);
  arrive(v, { velocity: 1 }); const held = last("level")[1], open = last("bright")[1];
  check("arriving swells to the foreground over 4 s", held > 0.5 && last("level")[2] === 4000);
  clear(); v.release();
  const lv = last("level"), br = last("bright");
  check("PASS: thins at once, then settles to the floor over ~20 s", lv[1] < held && near(lv[3], 0.15) && lv[4] >= 15000);
  check("… and darkens", br[1] < open && br[3] < br[1]);
  check("… keeping the old chord ringing", all("bankA").length === 0 && all("bankB").length === 0);
  clear(); v.failed(); check("a failed pass brings it back", near(last("level")[1], held));
  v.panic(); check("panic silences", last("level")[1] === 0);
}
{ const { v, last, all, clear } = voice("dust"); arrive(v); clear();
  v.pitch(12); check("pitch transposes the grains, not the chord", last("grains", "transpose")[2] === 12 && all("bankA").length === 0);
  v.ring(0.25); check("ring as before", last("ring")[1] === 0.25);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
