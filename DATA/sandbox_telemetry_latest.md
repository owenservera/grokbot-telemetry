# sandbox_telemetry_parse — 2026-11-26 10:21:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3208845 lines=7107
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7092 |
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
| `chromeBrowserPssKb` | {'int': 7092} |
| `chromeGpuPssKb` | {'int': 7092} |
| `chromeOtherPssKb` | {'int': 7092} |
| `chromeProcesses` | {'int': 7092} |
| `chromeProfiles` | {'int': 7092} |
| `chromeRendererMaxPssKb` | {'int': 7092} |
| `chromeRendererPssKb` | {'int': 7092} |
| `chromeRenderers` | {'int': 7092} |
| `chromeTabs` | {'int': 7092} |
| `chromeTabsProbedProfiles` | {'int': 7092} |
| `chromeUtilityPssKb` | {'int': 7092} |
| `desktopPssKb` | {'int': 7092} |
| `hostPssKb` | {'int': 7092} |
| `kind` | {'str': 7092} |
| `memAvailableKb` | {'int': 7092} |
| `memTotalKb` | {'int': 7092} |
| `otherPssKb` | {'int': 7092} |
| `processes` | {'int': 7092} |
| `pssFallbackProcesses` | {'int': 7092} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
