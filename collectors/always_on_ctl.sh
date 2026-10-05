#!/usr/bin/env bash
# always_on_ctl.sh start|stop|status|restart — manage the always-on telemetry daemon.
ROOT="/workspace/grokbot-telemetry"
PIDFILE="$ROOT/DATA/always_on.pid"
alive() { [[ -f "$PIDFILE" ]] && kill -0 "$(cat "$PIDFILE")" 2>/dev/null; }
case "${1:-status}" in
  start)
    if alive; then echo "already running pid=$(cat "$PIDFILE")"; exit 0; fi
    cd "$ROOT" && setsid nohup "$ROOT/collectors/always_on.sh" >/dev/null 2>&1 </dev/null &
    sleep 3
    if alive; then echo "started pid=$(cat "$PIDFILE")"; else echo "FAILED (see DATA/always_on.log)"; exit 1; fi ;;
  stop)
    if alive; then p=$(cat "$PIDFILE"); kill "$p" && echo "stopped pid=$p"; else echo "not running"; fi ;;
  restart) "$0" stop; sleep 2; "$0" start ;;
  status)
    if alive; then echo "running pid=$(cat "$PIDFILE")"; tail -n 3 "$ROOT/DATA/always_on.log" 2>/dev/null
    else echo "NOT running"; exit 1; fi ;;
  *) echo "usage: $0 start|stop|status|restart"; exit 2 ;;
esac
