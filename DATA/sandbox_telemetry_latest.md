# sandbox_telemetry_parse — 2026-11-07 14:07:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=494630 lines=1101
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1092 |
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
| `chromeBrowserPssKb` | {'int': 1092} |
| `chromeGpuPssKb` | {'int': 1092} |
| `chromeOtherPssKb` | {'int': 1092} |
| `chromeProcesses` | {'int': 1092} |
| `chromeProfiles` | {'int': 1092} |
| `chromeRendererMaxPssKb` | {'int': 1092} |
| `chromeRendererPssKb` | {'int': 1092} |
| `chromeRenderers` | {'int': 1092} |
| `chromeTabs` | {'int': 1092} |
| `chromeTabsProbedProfiles` | {'int': 1092} |
| `chromeUtilityPssKb` | {'int': 1092} |
| `desktopPssKb` | {'int': 1092} |
| `hostPssKb` | {'int': 1092} |
| `kind` | {'str': 1092} |
| `memAvailableKb` | {'int': 1092} |
| `memTotalKb` | {'int': 1092} |
| `otherPssKb` | {'int': 1092} |
| `processes` | {'int': 1092} |
| `pssFallbackProcesses` | {'int': 1092} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
