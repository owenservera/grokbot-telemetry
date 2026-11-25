# sandbox_telemetry_parse — 2026-11-25 14:43:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2798131 lines=6199
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6184 |
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
| `chromeBrowserPssKb` | {'int': 6184} |
| `chromeGpuPssKb` | {'int': 6184} |
| `chromeOtherPssKb` | {'int': 6184} |
| `chromeProcesses` | {'int': 6184} |
| `chromeProfiles` | {'int': 6184} |
| `chromeRendererMaxPssKb` | {'int': 6184} |
| `chromeRendererPssKb` | {'int': 6184} |
| `chromeRenderers` | {'int': 6184} |
| `chromeTabs` | {'int': 6184} |
| `chromeTabsProbedProfiles` | {'int': 6184} |
| `chromeUtilityPssKb` | {'int': 6184} |
| `desktopPssKb` | {'int': 6184} |
| `hostPssKb` | {'int': 6184} |
| `kind` | {'str': 6184} |
| `memAvailableKb` | {'int': 6184} |
| `memTotalKb` | {'int': 6184} |
| `otherPssKb` | {'int': 6184} |
| `processes` | {'int': 6184} |
| `pssFallbackProcesses` | {'int': 6184} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
