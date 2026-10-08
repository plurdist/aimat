// Spec for chain_mixer.js: the MIXER window's output grid and sends grid → matrix~ gains.
// Run: node tools/test_mixer.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };

function mixer() {
  const out = [], named = [];
  const ctx = { outlet: (i, ...a) => out.push([i, ...(a.length === 1 && Array.isArray(a[0]) ? a[0] : a)]),
                messnamed: (name, ...v) => named.push([name, ...v]), post: () => {}, Math };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_mixer.js"), "utf8"), ctx);
  return { m: ctx, out, named };
}
const last = (out, outlet) => out.filter(o => o[0] === outlet).pop();

{ const { m, out } = mixer();
  m.out("V2", "S3", 0.7);
  check("output grid: VOICE2 → speaker 3 sets matrix~ inlet 1 → outlet 2", JSON.stringify(last(out, 0)) === JSON.stringify([0, 1, 2, 0.7]));
  m.out("DLYR", "S1", 0.25);
  check("… DELAY right → speaker 1 is inlet 6 → outlet 0", JSON.stringify(last(out, 0)) === JSON.stringify([0, 6, 0, 0.25]));
  m.out("NOPE", "S1", 1); m.out("V1", "S9", 1);
  check("unknown rows and speakers are ignored", out.length === 2);
}
{ const { m, out } = mixer();
  m.send("V3", "DLY", 0.4);
  check("sends grid: VOICE3 → delay sets inlet 2 → outlet 1", JSON.stringify(last(out, 1)) === JSON.stringify([1, 2, 1, 0.4]));
  m.send("V1", "REV", 0.2); m.wash(0.5);
  const washed = out.filter(o => o[0] === 1 && o[2] === 0);
  check("WASH adds to every reverb send", Math.abs(washed[washed.length - 1][3] - 0.7) < 1e-9, JSON.stringify(washed));
  check("… without touching delay sends", out.filter(o => o[0] === 1 && o[2] === 1 && o[3] === 0.4).length === 1);
  m.echo(1); m.send("V3", "DLY", 0.4);
  check("ECHO adds to delay sends, up to full", last(out, 1)[3] === 1);
}
{ const { m, named } = mixer();
  m.reset();
  const get = (name) => (named.find(x => x[0] === name) || [])[1];
  check("reset: each voice to its own speaker", get("mix_V1_S1") === 1 && get("mix_V1_S2") === 0 && get("mix_V3_S3") === 1);
  check("… the room spread left / middle / right", get("mix_REVL_S1") === 1 && get("mix_REVL_S2") === 0.5 && get("mix_REVL_S3") === 0 && get("mix_REVR_S3") === 1 && get("mix_DLYR_S2") === 0.5);
  check("… DDSP in every speaker", get("mix_DDSP_S1") === 1 && get("mix_DDSP_S2") === 1 && get("mix_DDSP_S3") === 1);
  check("… sends: a little reverb on every source, no delay", get("mix_V2_REV") === 0.2 && get("mix_V2_DLY") === 0);
  check("… every cell of both grids is reset", named.length === 9 * 3 + 5 * 2, named.length);
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
