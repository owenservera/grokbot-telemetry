# sandbox_telemetry_parse — 2026-10-28 20:46:24 UTC
- Log: `/tmp/sand-box-telemetry.log` bytes=188 lines=3
## kind counts
| kind | count |
|------|------:|
| `boot_stage` | 2 |
| `egress_tunnel` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `stage` | {'str': 2} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
