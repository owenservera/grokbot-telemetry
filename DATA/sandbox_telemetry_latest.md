# sandbox_telemetry_parse — 2026-11-11 04:17:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1468442 lines=3253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3244 |
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
| `chromeBrowserPssKb` | {'int': 3244} |
| `chromeGpuPssKb` | {'int': 3244} |
| `chromeOtherPssKb` | {'int': 3244} |
| `chromeProcesses` | {'int': 3244} |
| `chromeProfiles` | {'int': 3244} |
| `chromeRendererMaxPssKb` | {'int': 3244} |
| `chromeRendererPssKb` | {'int': 3244} |
| `chromeRenderers` | {'int': 3244} |
| `chromeTabs` | {'int': 3244} |
| `chromeTabsProbedProfiles` | {'int': 3244} |
| `chromeUtilityPssKb` | {'int': 3244} |
| `desktopPssKb` | {'int': 3244} |
| `hostPssKb` | {'int': 3244} |
| `kind` | {'str': 3244} |
| `memAvailableKb` | {'int': 3244} |
| `memTotalKb` | {'int': 3244} |
| `otherPssKb` | {'int': 3244} |
| `processes` | {'int': 3244} |
| `pssFallbackProcesses` | {'int': 3244} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
