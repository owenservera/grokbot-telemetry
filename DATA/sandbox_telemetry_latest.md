# sandbox_telemetry_parse — 2026-11-09 13:08:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=667441 lines=1483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1474 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1474} |
| `chromeGpuPssKb` | {'int': 1474} |
| `chromeOtherPssKb` | {'int': 1474} |
| `chromeProcesses` | {'int': 1474} |
| `chromeProfiles` | {'int': 1474} |
| `chromeRendererMaxPssKb` | {'int': 1474} |
| `chromeRendererPssKb` | {'int': 1474} |
| `chromeRenderers` | {'int': 1474} |
| `chromeTabs` | {'int': 1474} |
| `chromeTabsProbedProfiles` | {'int': 1474} |
| `chromeUtilityPssKb` | {'int': 1474} |
| `desktopPssKb` | {'int': 1474} |
| `hostPssKb` | {'int': 1474} |
| `kind` | {'str': 1474} |
| `memAvailableKb` | {'int': 1474} |
| `memTotalKb` | {'int': 1474} |
| `otherPssKb` | {'int': 1474} |
| `processes` | {'int': 1474} |
| `pssFallbackProcesses` | {'int': 1474} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
