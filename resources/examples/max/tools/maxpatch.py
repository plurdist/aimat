"""
Small helpers for writing Max patches (.maxpat JSON) from Python.

Every box can have a presentation rectangle, so a patch can open straight into a clean
performance screen with the wiring hidden off to the side.
"""
import json

FEEDBACK_MID = "/Users/ericbrowne/aimat/basic_pitch/output/chain_feedback.mid"

# light theme: the default dark text on Max UI objects stays readable
BG = [0.86, 0.86, 0.84, 1.0]
SECTION = [0.96, 0.96, 0.95, 1.0]
ACCENTS = {
    "chain": [0.93, 0.42, 0.40, 1.0],
    "player": [0.72, 0.58, 0.90, 1.0],
    "room": [0.45, 0.80, 0.70, 1.0],
    "fx": [0.62, 0.62, 0.66, 1.0],
    "out": [0.30, 0.30, 0.33, 1.0],
}
WHITE_TITLES = {"out"}


class Patch:
    def __init__(self):
        self.boxes, self.lines, self.params = [], [], {}
        self._n = 0

    def add(self, maxclass, x, y, w, h=22.0, text=None, ins=1, outs=1, types=None, pres=None, **extra):
        self._n += 1
        bid = f"obj-{self._n}"
        box = {"id": bid, "maxclass": maxclass, "numinlets": ins, "numoutlets": outs,
               "patching_rect": [float(x), float(y), float(w), float(h)]}
        if outs:
            box["outlettype"] = types or [""] * outs
        if text is not None:
            box["text"] = text
        if pres is not None:
            box["presentation"] = 1
            box["presentation_rect"] = [float(v) for v in pres]
        box.update(extra)
        self.boxes.append({"box": box})
        return bid

    def obj(self, x, y, text, ins=1, outs=1, types=None, w=None, pres=None):
        if text.split()[0] in ("f", "i") and ins == 1:
            ins = 2  # [f] and [i] have a cold right inlet for storing a value
        return self.add("newobj", x, y, w or max(40, 7 * len(text) + 16), 22.0, text, ins, outs, types, pres)

    def msg(self, x, y, text, w=None, pres=None, **extra):
        return self.add("message", x, y, w or max(40, 7 * len(text) + 16), 22.0, text, 2, 1, None, pres, **extra)

    def comment(self, x, y, text, w=200, size=12.0, bold=False, pres=None, **extra):
        lc = text.count("\n") + 1
        extra.update({"fontsize": size, "linecount": lc})
        if bold:
            extra["fontface"] = 1
        return self.add("comment", x, y, w, lc * (size + 6), text, 1, 0, None, pres, **extra)

    def panel(self, x, y, w, h, color, pres=None, rounded=6):
        return self.add("panel", x, y, w, h, None, 1, 0, None, pres,
                        bgcolor=color, mode=0, rounded=rounded, background=1)

    def button(self, x, y, size=24, pres=None, **extra):
        return self.add("button", x, y, size, size, None, 1, 1, ["bang"], pres, parameter_enable=0, **extra)

    def toggle(self, x, y, size=22, pres=None):
        return self.add("toggle", x, y, size, size, None, 1, 1, ["int"], pres, parameter_enable=0)

    def number(self, x, y, w=50, pres=None, **extra):
        return self.add("number", x, y, w, 22.0, None, 1, 2, ["", "bang"], pres, parameter_enable=0, **extra)

    def umenu(self, x, y, items, w=100, pres=None):
        flat = []
        for i, item in enumerate(items):
            if i:
                flat.append(",")
            flat.append(item)
        return self.add("umenu", x, y, w, 22.0, None, 1, 3, ["int", "", ""], pres, items=flat, parameter_enable=0)

    def dial(self, x, y, name, lo, hi, init, unitstyle=1, pres=None, label=None):
        """A live.dial: a Max parameter, so MIDI Map mode can assign it."""
        bid = self.add("live.dial", x, y, 44, 48, None, 1, 2, ["", "float"], pres,
                       parameter_enable=1, showname=1, varname=name,
                       saved_attribute_attributes={"valueof": {
                           "parameter_longname": name, "parameter_shortname": label or name,
                           "parameter_type": 0, "parameter_mmin": float(lo), "parameter_mmax": float(hi),
                           "parameter_initial": [init], "parameter_initial_enable": 1,
                           "parameter_unitstyle": unitstyle}})
        self.params[bid] = [name, label or name, 0]
        return bid

    def live_button(self, x, y, name, size=36, pres=None):
        """A live.button: a Max parameter, so MIDI Map mode can assign it."""
        bid = self.add("live.button", x, y, size, size, None, 1, 1, [""], pres,
                       parameter_enable=1, varname=name,
                       saved_attribute_attributes={"valueof": {
                           "parameter_longname": name, "parameter_shortname": name,
                           "parameter_type": 2, "parameter_mmax": 1, "parameter_enum": ["off", "on"]}})
        self.params[bid] = [name, name, 0]
        return bid

    def ezdac(self, x, y, pres=None):
        return self.add("ezdac~", x, y, 45, 45, None, 2, 0, None, pres)

    def wire(self, src, so, dst, di=0):
        self.lines.append({"patchline": {"source": [src, so], "destination": [dst, di]}})

    def save(self, path, rect, presentation=True):
        patcher = {
            "fileversion": 1,
            "appversion": {"major": 9, "minor": 0, "revision": 7, "architecture": "x64", "modernui": 1},
            "classnamespace": "box",
            "rect": rect,
            "gridsize": [15.0, 15.0],
            "openinpresentation": 1 if presentation else 0,
            "boxes": self.boxes,
            "lines": self.lines,
        }
        if self.params:
            patcher["parameters"] = dict(self.params)
        json.dump({"patcher": patcher}, open(path, "w"), indent=1)
        return len(self.boxes), len(self.lines)


def section(p, key, title, x, y, w, h):
    """A titled panel on the performance screen."""
    p.panel(x, y, w, h, SECTION, pres=[x, y, w, h])
    p.panel(x, y, w, 24, ACCENTS[key], pres=[x, y, w, 24], rounded=0)
    p.comment(x, y, title, w - 10, 13.0, bold=True, pres=[x + 6, y + 2, w - 12, 20],
              **({"textcolor": [1, 1, 1, 1]} if key in WHITE_TITLES else {}))


def label(p, px, py, text, w=120, size=11.0):
    """A comment that only exists on the performance screen."""
    return p.comment(0, 0, text, w, size, pres=[px, py, w, size + 8])
