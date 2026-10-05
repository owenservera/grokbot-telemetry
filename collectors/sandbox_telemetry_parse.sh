#!/usr/bin/env bash
# Collector 3: safe parse of /tmp/sand-box-telemetry.log + CDP↔Fork↔display map
# NEVER dumps cookie/token payloads; seedCookies and secret-named keys → counts/redacted only.
set -euo pipefail
ROOT="/workspace/grokbot-telemetry"
DATA="$ROOT/DATA"
DIFFS="$ROOT/DIFFS"
mkdir -p "$DATA" "$DIFFS"
TS=$(date '+%Y%m%d-%H%M%S')
TS_ISO=$(date '+%Y-%m-%dT%H:%M:%S%z')
TS_HUMAN=$(date '+%Y-%m-%d %H:%M:%S %Z')
LOG="${SAND_BOX_TELEMETRY_LOG:-/tmp/sand-box-telemetry.log}"
OUT_JSON="$DATA/sandbox_telemetry_${TS}.json"
OUT_LATEST="$DATA/sandbox_telemetry_latest.json"
OUT_MD="$DATA/sandbox_telemetry_latest.md"
CDP_JSON="$DATA/cdp_display_map_${TS}.json"
CDP_LATEST="$DATA/cdp_display_map_latest.json"
CDP_MD="$DATA/cdp_display_map_latest.md"
DIFF_OUT="$DIFFS/${TS}-sandbox-telemetry-summary.md"

python3 - "$LOG" "$OUT_JSON" "$OUT_MD" "$CDP_JSON" "$CDP_MD" "$DIFF_OUT" "$TS_ISO" "$TS_HUMAN" <<'PY'
import json, sys, re, collections, subprocess
from pathlib import Path

log_path, out_json, out_md, cdp_json, cdp_md, diff_out, ts_iso, ts_human = sys.argv[1:]

SECRET_KEY = re.compile(r"(token|secret|password|passwd|cookie|authorization|api[_-]?key|credential|bearer|otp|totp|seedCookies)", re.I)

def summarize_log(path: Path):
    if not path.exists():
        return {"error": "missing", "path": str(path)}
    lines = path.read_text(errors="replace").splitlines()
    kinds = collections.Counter()
    key_types = collections.defaultdict(lambda: collections.defaultdict(collections.Counter))
    displays = collections.Counter()
    stages = collections.Counter()
    outcomes = collections.Counter()
    redactions = []
    for line in lines:
        line = line.strip()
        if not line:
            continue
        try:
            o = json.loads(line)
        except json.JSONDecodeError:
            kinds["__parse_error__"] += 1
            continue
        kind = o.get("kind", "__no_kind__")
        kinds[kind] += 1
        for k, v in o.items():
            key_types[kind][k][type(v).__name__] += 1
            if SECRET_KEY.search(k):
                # record that we saw a sensitive key name; never store value
                redactions.append({"kind": kind, "key": k, "value_type": type(v).__name__,
                                   "note": "value omitted"})
        if "display" in o:
            displays[str(o["display"])] += 1
        if "stage" in o:
            stages[str(o["stage"])] += 1
        if "outcome" in o:
            outcomes[f"{kind}:{o['outcome']}"] += 1

    # collapse redaction notes
    red_summary = collections.Counter((r["kind"], r["key"], r["value_type"]) for r in redactions)

    schema = {}
    for kind, keys in key_types.items():
        schema[kind] = {k: dict(types) for k, types in sorted(keys.items())}

    return {
        "timestamp": ts_iso,
        "source": "sandbox_telemetry_parse",
        "path": str(path),
        "bytes": path.stat().st_size,
        "line_count": len(lines),
        "kind_counts": dict(kinds.most_common()),
        "schema_by_kind": schema,
        "display_counts_in_log": dict(displays),
        "boot_stages": dict(stages),
        "outcomes": dict(outcomes),
        "redaction_summary": [
            {"kind": k, "key": key, "value_type": vt, "seen": n}
            for (k, key, vt), n in red_summary.most_common()
        ],
        "redaction_policy": [
            "Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies",
            "Emit only kind counts, key names, value types, and numeric aggregates",
            "Do not copy cookie payloads or auth material even if present as ints/objects",
        ],
    }

def cdp_map():
    out = subprocess.check_output(["ps", "-eo", "pid,ppid,args"], text=True, errors="replace")
    chrome_rows = []
    pw_rows = []
    for line in out.splitlines():
        m = re.match(r"\s*(\d+)\s+(\d+)\s+(.*)", line)
        if not m:
            continue
        pid, ppid, cmd = int(m.group(1)), int(m.group(2)), m.group(3)
        if "cdp-endpoint" in cmd and "sand-playwright" in cmd:
            port_m = re.search(r"cdp-endpoint\s+http://127\.0\.0\.1:(\d+)", cmd)
            pw_rows.append({
                "pid": pid,
                "ppid": ppid,
                "cdp_port": int(port_m.group(1)) if port_m else None,
                "role": "sand-playwright-main",
            })
            continue
        if "/opt/google/chrome/chrome" in cmd or "google-chrome" in cmd:
            if "--type=" in cmd:
                continue
            port_m = re.search(r"--remote-debugging-port=(\d+)", cmd)
            udd_m = re.search(r"--user-data-dir=(\S+)", cmd)
            # display from sibling log wrapper env or Fork-N
            disp = None
            fork = None
            if udd_m:
                fm = re.search(r"Fork-(\d+)", udd_m.group(1))
                if fm:
                    fork = int(fm.group(1))
                    disp = f":{fork}"
            # Prefer DISPLAY from /proc for wrapper children; main chrome often null
            try:
                env = Path(f"/proc/{pid}/environ").read_bytes().split(b"\0")
                for e in env:
                    if e.startswith(b"DISPLAY="):
                        disp = e.decode().split("=", 1)[1]
            except Exception:
                pass
            if not port_m:
                continue
            chrome_rows.append({
                "chrome_pid": pid,
                "cdp_port": int(port_m.group(1)),
                "user_data_dir": udd_m.group(1) if udd_m else None,
                "fork": fork,
                "display": disp,
                "formula_cdp": (9222 + fork) if fork else None,
            })

    # assignments without tokens
    assign = {}
    agent_names = {}
    ap = Path("/home/box/.sand-window-assignments.json")
    if ap.exists():
        try:
            raw = json.loads(ap.read_text())
            assign = {str(v): k for k, v in raw.get("assignments", {}).items()}
        except Exception:
            pass
    for d in Path("/home/box/sand-data/agents").glob("*/profile.json"):
        try:
            name = json.loads(d.read_text()).get("name")
            agent_names[d.parent.name] = name
        except Exception:
            pass

    # Xvfb
    xvfb = []
    for line in subprocess.check_output(["ps", "-eo", "pid,args"], text=True, errors="replace").splitlines():
        m = re.search(r"(\d+)\s+.*Xvfb :(\d+)", line)
        if m:
            xvfb.append({"pid": int(m.group(1)), "display": f":{m.group(2)}", "display_num": int(m.group(2))})

    # Merge table
    table = []
    seen_ports = set()
    for row in chrome_rows:
        # dedupe main chrome vs wrapper: prefer row with display set matching fork
        port = row["cdp_port"]
        if port in seen_ports and row.get("display") is None:
            continue
        # if we already have a fuller row, skip thinner
        if port in seen_ports:
            continue
        seen_ports.add(port)
        disp_num = None
        if row.get("display") and row["display"].startswith(":"):
            try:
                disp_num = int(row["display"][1:])
            except ValueError:
                pass
        elif row.get("fork"):
            disp_num = row["fork"]
        agent_id = assign.get(str(disp_num)) if disp_num is not None else None
        pw = [p for p in pw_rows if p.get("cdp_port") == port]
        table.append({
            "cdp_port": port,
            "display": f":{disp_num}" if disp_num is not None else row.get("display"),
            "display_num": disp_num,
            "fork": row.get("fork") or disp_num,
            "user_data_dir": row.get("user_data_dir"),
            "chrome_pid": row.get("chrome_pid"),
            "agent_id": agent_id,
            "agent_name": agent_names.get(agent_id) if agent_id else None,
            "playwright_attached": bool(pw),
            "playwright_pids": [p["pid"] for p in pw],
            "cdp_formula": "9222 + display_num",
            "formula_match": (port == 9222 + disp_num) if disp_num is not None else None,
        })

    # forks on disk without live chrome
    profile_root = Path("/home/box/chrome-profile")
    disk_forks = []
    if profile_root.exists():
        for p in sorted(profile_root.iterdir()):
            m = re.match(r"Fork-(\d+)$", p.name)
            if m:
                disk_forks.append({"fork": int(m.group(1)), "path": str(p)})

    return {
        "timestamp": ts_iso,
        "source": "cdp_display_map",
        "formula": "CDP_port = 9222 + N for display :N / chrome-profile/Fork-N (observed)",
        "live_table": sorted(table, key=lambda r: r.get("cdp_port") or 0),
        "playwright_workers": pw_rows,
        "xvfb": sorted(xvfb, key=lambda x: x["display_num"]),
        "disk_forks": disk_forks,
        "assignments_display_to_agent": {
            d: {"agent_id": aid, "agent_name": agent_names.get(aid)}
            for d, aid in assign.items()
        },
        "redaction_notes": ["window assignment tokens not read/emitted"],
    }

log_sum = summarize_log(Path(log_path))
cdp = cdp_map()

Path(out_json).write_text(json.dumps(log_sum, indent=2) + "\n")
Path(cdp_json).write_text(json.dumps(cdp, indent=2) + "\n")

# Markdown summaries
md = []
md.append(f"# sandbox_telemetry_parse — {ts_human}\n")
md.append(f"- Log: `{log_sum.get('path')}` bytes={log_sum.get('bytes')} lines={log_sum.get('line_count')}\n")
md.append("## kind counts\n")
md.append("| kind | count |\n|------|------:|\n")
for k, n in (log_sum.get("kind_counts") or {}).items():
    md.append(f"| `{k}` | {n} |\n")
md.append("\n## schema (key → value types) by kind\n")
for kind, keys in (log_sum.get("schema_by_kind") or {}).items():
    md.append(f"\n### `{kind}`\n\n| key | types |\n|-----|-------|\n")
    for key, types in keys.items():
        flag = " **REDACT values**" if SECRET_KEY.search(key) else ""
        md.append(f"| `{key}` | {types}{flag} |\n")
md.append("\n## redaction summary\n\n")
for r in log_sum.get("redaction_summary") or []:
    md.append(f"- `{r['kind']}.{r['key']}` type={r['value_type']} seen={r['seen']} (values omitted)\n")
md.append("\n## policy\n\n")
for p in log_sum.get("redaction_policy") or []:
    md.append(f"- {p}\n")
Path(out_md).write_text("".join(md))

cmd = []
cmd.append(f"# CDP ↔ Fork ↔ display map — {ts_human}\n\n")
cmd.append(f"**Formula:** `{cdp['formula']}`\n\n")
cmd.append("| CDP | Display | Fork | Profile | Chrome PID | Agent | Playwright |\n")
cmd.append("|-----|---------|------|---------|------------|-------|------------|\n")
for r in cdp.get("live_table") or []:
    cmd.append(
        f"| {r.get('cdp_port')} | {r.get('display')} | Fork-{r.get('fork')} | `{r.get('user_data_dir')}` | "
        f"{r.get('chrome_pid')} | {r.get('agent_name') or '—'} | "
        f"{'yes '+str(r.get('playwright_pids')) if r.get('playwright_attached') else 'no'} |\n"
    )
cmd.append("\n## Xvfb\n\n")
for x in cdp.get("xvfb") or []:
    cmd.append(f"- {x['display']} pid={x['pid']}\n")
cmd.append("\n## Disk forks\n\n")
for f in cdp.get("disk_forks") or []:
    cmd.append(f"- Fork-{f['fork']}: `{f['path']}`\n")
Path(cdp_md).write_text("".join(cmd))

# DIFFS summary (safe)
diff = []
diff.append(f"# DIFF sandbox telemetry + CDP — {ts_human}\n\n")
diff.append(f"- kind_counts: `{json.dumps(log_sum.get('kind_counts'))}`\n")
diff.append(f"- log_bytes: {log_sum.get('bytes')}\n")
diff.append(f"- live CDP ports: {[r.get('cdp_port') for r in cdp.get('live_table') or []]}\n")
diff.append(f"- formula: {cdp.get('formula')}\n")
diff.append("- secrets: none copied\n")
Path(diff_out).write_text("".join(diff))

print("WROTE", out_json)
print("WROTE", cdp_json)
print("WROTE", out_md)
print("WROTE", cdp_md)
print("WROTE", diff_out)
print("KINDS", log_sum.get("kind_counts"))
print("CDP_ROWS", len(cdp.get("live_table") or []))
PY

cp -f "$OUT_JSON" "$OUT_LATEST"
cp -f "$CDP_JSON" "$CDP_LATEST"
echo "DONE $TS_HUMAN"
