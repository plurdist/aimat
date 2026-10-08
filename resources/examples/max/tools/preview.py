"""Draws an SVG approximation of a patch's performance screen (presentation view)."""
import html, json, sys
main_file, out_file, W, H = sys.argv[1], sys.argv[2], int(sys.argv[3]), int(sys.argv[4])
col = lambda c: "rgb(%d,%d,%d)" % tuple(int(v * 255) for v in c[:3])
cache = {}
def boxes(f):
    if f not in cache:
        cache[f] = json.load(open(f))["patcher"]["boxes"]
    return cache[f]
out = []
def draw(bs, dx=0, dy=0, arg=None):
    for b in bs:
        b = b["box"]
        if not b.get("presentation"):
            continue
        x, y, w, h = b["presentation_rect"]; x += dx; y += dy; c = b["maxclass"]
        if c == "panel":
            out.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="{min(6, b.get("rounded", 0))}" fill="{col(b["bgcolor"])}"/>')
        elif c == "comment":
            size = b.get("fontsize", 12); weight = "bold" if b.get("fontface") == 1 else "normal"
            text = arg if (arg and b["text"] == "strip") else b["text"]
            fill = col(b["textcolor"]) if "textcolor" in b else "#222"
            for k, line in enumerate(text.split("\n")):
                out.append(f'<text x="{x}" y="{y + size + k * (size + 3)}" font-size="{size}" font-weight="{weight}" font-family="Helvetica" fill="{fill}">{html.escape(line)}</text>')
        elif c == "live.dial":
            r = min(w, h - 14) / 2 - 2; cx, cy = x + w / 2, y + 14 + r
            lab = b["saved_attribute_attributes"]["valueof"]["parameter_shortname"]
            out.append(f'<text x="{cx}" y="{y + 10}" font-size="9" text-anchor="middle" font-family="Helvetica" fill="#333">{html.escape(lab)}</text><circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="#555" stroke-width="3"/>')
        elif c == "live.gain~":
            out.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#2a2a2e"/><rect x="{x + 6}" y="{y + h * .35}" width="{w / 2 - 8}" height="{h * .65 - 4}" fill="#4caf50"/><rect x="{x + w / 2 + 2}" y="{y + h * .4}" width="{w / 2 - 8}" height="{h * .6 - 4}" fill="#4caf50"/>')
        elif c == "meter~":
            out.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#2a2a2e"/><rect x="{x}" y="{y}" width="{w * .6}" height="{h}" fill="#4caf50"/>')
        elif c == "led":
            out.append(f'<circle cx="{x + w / 2}" cy="{y + h / 2}" r="{w / 2 - 1}" fill="{col(b.get("oncolor", [0.2, 0.9, 0.3]))}" stroke="#333"/>')
        elif c in ("button", "ezdac~", "live.button"):
            fill = "#e8e3f7" if c == "live.button" else "#fff"
            out.append(f'<circle cx="{x + w / 2}" cy="{y + h / 2}" r="{w / 2 - 1}" fill="{fill}" stroke="#333" stroke-width="2"/>')
        elif c == "toggle":
            out.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#fff" stroke="#333" stroke-width="2"/>')
        elif c == "slider":
            out.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#ddd" stroke="#888"/><rect x="{x + w * .72}" y="{y}" width="6" height="{h}" fill="#333"/>')
        elif c in ("umenu", "number", "message", "flonum"):
            text = b.get("text", "") if c == "message" else ("" if c in ("number", "flonum") else (b.get("items") or [""])[0])
            out.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="3" fill="#fff" stroke="#888"/><text x="{x + 5}" y="{y + h / 2 + 4}" font-size="11" font-family="Helvetica" fill="#222">{html.escape(text)}</text>')
        elif c == "bpatcher":
            draw(boxes(b["name"]), x, y, b["args"][0])
draw(boxes(main_file))
open(out_file, "w").write(f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" viewBox="0 0 {W} {H}"><rect width="{W}" height="{H}" fill="#fff"/>' + "".join(out) + "</svg>")
