# ACTION_TRACE — 2026-10-06 always-on telemetry daemon

**Time:** 2026-10-06 ~00:05 CEST (Europe/Paris)  
**Order:** Owen (via parent; from Windows DESKTOP-9KB03LU) — observability must run continuously on the box, not as a chat tool; auto commit+push every 5 min.

## Mechanism
- `collectors/always_on.sh`: infinite loop → `run_all.sh` → always `git_sync.sh` (commits if dirty, pushes to owenservera/grokbot-telemetry) → `sleep 300`.
- Single instance: `flock` on `DATA/.always_on.lock`; PID in `DATA/always_on.pid`.
- Started with `setsid nohup` via `collectors/always_on_ctl.sh start` (no systemd; PID 1 = tini).
- Log `DATA/always_on.log` (5 MiB rotation; gitignored). Future timestamped snapshots gitignored and pruned locally to 288 per collector; `*_latest.*` published. Already-tracked history untouched.
- Collectors unchanged: argv redaction, no `daintree --version`.

## Limits
- Survives chat turns/agent exits; does **not** survive box restart → WAKE.md step 0 restarts it.
- Domain status 5m routine remains paused (comms freeze); only telemetry runs.
