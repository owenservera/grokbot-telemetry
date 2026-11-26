# sandbox_telemetry_parse — 2026-11-26 16:24:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3328871 lines=7374
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7357 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7357} |
| `chromeGpuPssKb` | {'int': 7357} |
| `chromeOtherPssKb` | {'int': 7357} |
| `chromeProcesses` | {'int': 7357} |
| `chromeProfiles` | {'int': 7357} |
| `chromeRendererMaxPssKb` | {'int': 7357} |
| `chromeRendererPssKb` | {'int': 7357} |
| `chromeRenderers` | {'int': 7357} |
| `chromeTabs` | {'int': 7357} |
| `chromeTabsProbedProfiles` | {'int': 7357} |
| `chromeUtilityPssKb` | {'int': 7357} |
| `desktopPssKb` | {'int': 7357} |
| `hostPssKb` | {'int': 7357} |
| `kind` | {'str': 7357} |
| `memAvailableKb` | {'int': 7357} |
| `memTotalKb` | {'int': 7357} |
| `otherPssKb` | {'int': 7357} |
| `processes` | {'int': 7357} |
| `pssFallbackProcesses` | {'int': 7357} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
