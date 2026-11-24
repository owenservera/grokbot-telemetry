# sandbox_telemetry_parse — 2026-11-24 06:44:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2171201 lines=4813
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4798 |
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
| `chromeBrowserPssKb` | {'int': 4798} |
| `chromeGpuPssKb` | {'int': 4798} |
| `chromeOtherPssKb` | {'int': 4798} |
| `chromeProcesses` | {'int': 4798} |
| `chromeProfiles` | {'int': 4798} |
| `chromeRendererMaxPssKb` | {'int': 4798} |
| `chromeRendererPssKb` | {'int': 4798} |
| `chromeRenderers` | {'int': 4798} |
| `chromeTabs` | {'int': 4798} |
| `chromeTabsProbedProfiles` | {'int': 4798} |
| `chromeUtilityPssKb` | {'int': 4798} |
| `desktopPssKb` | {'int': 4798} |
| `hostPssKb` | {'int': 4798} |
| `kind` | {'str': 4798} |
| `memAvailableKb` | {'int': 4798} |
| `memTotalKb` | {'int': 4798} |
| `otherPssKb` | {'int': 4798} |
| `processes` | {'int': 4798} |
| `pssFallbackProcesses` | {'int': 4798} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
