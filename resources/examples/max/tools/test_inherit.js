// Spec for chain_inherit.js: the holder's playing is recorded; on a pass, the next player's grains read it.
// Run: node tools/test_inherit.js
const fs = require("fs"), vm = require("vm"), path = require("path");
let ok = true, n = 0;
const check = (l, c, d = "") => { n++; console.log((c ? "PASS " : "FAIL ") + l + (c ? "" : "  " + d)); ok = ok && !!c; };

function inherit() {
  const out = [], tasks = [];
  const ctx = { outlet: (i, ...a) => out.push(a.length === 1 && Array.isArray(a[0]) ? a[0] : a), post: () => {}, Math, Task: function () {} };
  vm.createContext(ctx);
  vm.runInContext(fs.readFileSync(path.join(__dirname, "..", "chain_inherit.js"), "utf8"), ctx);
  let clock = 1e6;
  ctx.now = () => clock; ctx.later = (fn, ms) => tasks.push({ fn, at: clock + ms });
  const run = (ms) => { const end = clock + ms; for (;;) { tasks.sort((a, b) => a.at - b.at); const t = tasks[0]; if (!t || t.at > end) break; tasks.shift(); clock = t.at; t.fn(); } clock = end; };
  const msgs = (kind, k) => out.filter(o => o[0] === kind && (k === undefined || o[1] === k));
  const reads = (k) => (msgs("voice", k).pop() || [])[3];
  const recSlot = (k) => (msgs("rec", k).filter(o => o[2] === "set").pop() || [])[3];
  const label = (k) => (msgs("label", k).pop() || []).slice(2).join(" ");
  const ev = { arrive: (k) => ctx.voice(k, "arrive", "notes", 8), release: (k) => ctx.voice(k, "release"), failed: (k) => ctx.voice(k, "failed") };
  return { h: ctx, out, run, msgs, reads, recSlot, label, ev, clear: () => { out.length = 0; } };
}
const started = (msgs, k) => msgs("rec", k).some(o => o[2] === 1);
const stopped = (msgs, k) => msgs("rec", k).some(o => o[2] === 0);

{ const { h, run, msgs, reads, recSlot, label, ev, clear } = inherit();
  h.newsource();
  check("NEW SOURCE: every voice reads the new Musika source", [1, 2, 3].every(k => reads(k) === "relay_source"));
  check("… and every panel says so", [1, 2, 3].every(k => /new source/.test(label(k))), label(1));
  clear(); ev.arrive(1);
  check("generation 0: PLAYER 1's grains read the Musika source", reads(1) === "relay_source");
  check("… and recording waits for the swell (nothing in the first 2 s)", !started(msgs, 1));
  run(2000);
  const slot = recSlot(1);
  check("… then PLAYER 1's playing records into a fresh generation buffer", started(msgs, 1) && /^relay_gen_\d$/.test(slot), slot);
  check("… which is sized and cleared first", msgs("buffer").some(o => o[2] === "size" && o[3] === 60000) && msgs("buffer").some(o => o[2] === "clear"));
  run(10000); clear(); ev.release(1);
  check("PASS: PLAYER 1's recording stops at once", stopped(msgs, 1));
  clear(); run(3000); ev.arrive(2);
  check("the next phrase lands: PLAYER 2's grains read PLAYER 1's recording", reads(2) === slot, reads(2));
  const crop = msgs("buffer").find(o => o[2] === "crop");
  check("… trimmed to what was recorded (10 s) and normalised", crop && crop[3] === 0 && Math.abs(crop[4] - 10000) < 1 && msgs("buffer").some(o => o[2] === "normalize"), JSON.stringify(crop));
  check("… and PLAYER 2's panel says where it came from", /P1/.test(label(2)) && /gen 0/.test(label(2)), label(2));
  run(2000);
  check("PLAYER 2's own playing records into a different buffer", recSlot(2) && recSlot(2) !== slot, recSlot(2));
}
{ const { h, run, reads, recSlot, ev } = inherit();
  h.newsource(); ev.arrive(1);
  let bad = [];
  for (let i = 0; i < 12; i++) {
    const k = (i % 3) + 1, next = (k % 3) + 1;
    run(2500 + i * 700);
    const inUse = [1, 2, 3].map(reads);
    if (inUse.includes(recSlot(k))) bad.push(`pass ${i}: P${k} records into ${recSlot(k)}, read by ${JSON.stringify(inUse)}`);
    ev.release(k); run(3000); ev.arrive(next);
  }
  check("over many passes, nobody ever records over a buffer someone is still playing from", bad.length === 0, bad[0]);
}
{ const { h, run, reads, msgs, ev } = inherit();
  h.newsource(); ev.arrive(1); run(1500); ev.release(1); run(3000); ev.arrive(2);
  check("a pass before recording started: the next player inherits what the passer was playing from", reads(2) === "relay_source");
  check("… and no empty buffer is passed on", !msgs("buffer").some(o => o[2] === "crop"));
}
{ const { h, run, reads, ev } = inherit();
  h.newsource(); ev.arrive(1); run(2500); ev.release(1); run(3000); ev.arrive(2);
  check("less than a second recorded counts as nothing", reads(2) === "relay_source");
}
{ const { h, run, msgs, ev, clear } = inherit();
  h.newsource(); ev.arrive(1); run(2000); clear(); run(65000);
  check("recording stops by itself after 60 s", stopped(msgs, 1));
  ev.release(1); clear(); run(3000); ev.arrive(2);
  const crop = msgs("buffer").find(o => o[2] === "crop");
  check("… and passes on exactly 60 s", crop && Math.abs(crop[4] - 60000) < 1, JSON.stringify(crop));
}
{ const { h, run, msgs, reads, ev, clear } = inherit();
  h.newsource(); ev.arrive(1); run(2000); run(5000); ev.release(1); run(2000); clear(); ev.failed(1);
  check("a failed pass: PLAYER 1 carries on recording where they left off", msgs("rec", 1).some(o => o[2] === "append" && o[3] === 1) && started(msgs, 1));
  run(5000); ev.release(1); run(3000); clear(); ev.arrive(2);
  const crop = msgs("buffer").find(o => o[2] === "crop");
  check("… and the whole take (5 s + 5 s) is passed on", crop && Math.abs(crop[4] - 10000) < 1, JSON.stringify(crop));
}
{ const { h, run, reads, ev } = inherit();
  h.newsource(); ev.arrive(1); run(10000);
  h.newsource();                     // NEW SOURCE mid-piece: the relay then releases the old holder and lands gen 0 on PLAYER 1
  ev.release(1); run(4000); ev.arrive(1);
  check("NEW SOURCE mid-piece resets the chain: gen 0 reads the new source, not the old take", reads(1) === "relay_source" && [2, 3].every(k => reads(k) === "relay_source"));
}
{ const { h, run, reads, label, ev } = inherit();
  h.inherit(0); h.newsource(); ev.arrive(1); run(10000); ev.release(1); run(3000); ev.arrive(2);
  check("inherit off: everyone plays from the Musika source", reads(2) === "relay_source" && /new source/.test(label(2)));
  h.inherit(1); run(10000); ev.release(2); run(3000); ev.arrive(3);
  check("inherit back on: the next pass inherits again", /^relay_gen_\d$/.test(reads(3)), reads(3));
}
console.log(`${n} checks: ` + (ok ? "ALL PASS" : "SOME FAILED"));
process.exitCode = ok ? 0 : 1;
