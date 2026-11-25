# sandbox_telemetry_parse — 2026-11-25 04:59:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2602311 lines=5766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5751 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 5751} |
| `chromeGpuPssKb` | {'int': 5751} |
| `chromeOtherPssKb` | {'int': 5751} |
| `chromeProcesses` | {'int': 5751} |
| `chromeProfiles` | {'int': 5751} |
| `chromeRendererMaxPssKb` | {'int': 5751} |
| `chromeRendererPssKb` | {'int': 5751} |
| `chromeRenderers` | {'int': 5751} |
| `chromeTabs` | {'int': 5751} |
| `chromeTabsProbedProfiles` | {'int': 5751} |
| `chromeUtilityPssKb` | {'int': 5751} |
| `desktopPssKb` | {'int': 5751} |
| `hostPssKb` | {'int': 5751} |
| `kind` | {'str': 5751} |
| `memAvailableKb` | {'int': 5751} |
| `memTotalKb` | {'int': 5751} |
| `otherPssKb` | {'int': 5751} |
| `processes` | {'int': 5751} |
| `pssFallbackProcesses` | {'int': 5751} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
