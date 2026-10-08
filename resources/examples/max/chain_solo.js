// chain_solo.js: solo for any mixer strip.
// In:  solo <strip> <0|1>   from each strip's solo switch (every strip reports once at load)
//      clear                un-solo everything
// Sends, to each strip (receive names start with the strip name, because Max only fills in
// an abstraction's #1 at the start of a name):
//      <strip>_gate          1 = heard, 0 = silent. With nothing soloed every strip is heard;
//                            otherwise only soloed strips are. Sends are untouched, so a silent
//                            strip still feeds the reverb and delay.
//      <strip>_soloui        "set 0" when "clear" resets its switch

autowatch = 1;
inlets = 1;
outlets = 0;

// strip name -> soloed (0/1). Known up front, so solo works even if a strip's report at load is missed.
var strips = { BED: 0, SOURCE: 0, VOICE1: 0, VOICE2: 0, VOICE3: 0, DDSP: 0, REVERB: 0, DELAY: 0 };

function solo(name, on) {
    strips[String(name)] = on ? 1 : 0;
    update();
}

function clear() {
    for (var name in strips) {
        strips[name] = 0;
        messnamed(name + "_soloui", "set", 0);
    }
    update();
}

function update() {
    var any = 0;
    for (var name in strips) {
        any = any || strips[name];
    }
    for (var n in strips) {
        messnamed(n + "_gate", "float", any ? strips[n] : 1);
    }
}
