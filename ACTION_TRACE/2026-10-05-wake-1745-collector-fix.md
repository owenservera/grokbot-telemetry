# Action trace — wake 17:45 CEST collector fix

1. `collectors/run_all.sh` → fail=0, but exec_daemon summary showed 6 daemons (ports 14010–14015) with display `?`.
2. Read DISPLAY key only from `/proc/<pid>/environ` for those PIDs → :10–:15. Confirmed against `.sand-window-assignments.json` (assignments map only).
3. Patched `collectors/exec_daemon_sample.sh` (regex + environ DISPLAY preference + agent-data profile path); `bash -n` OK; re-ran → all 15 attributed.
4. Updated PROCESS_MAP.md, SESSION_LOG, this trace; ran verify.sh + git_sync.sh.
