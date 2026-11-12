# sandbox_telemetry_parse — 2026-11-12 11:49:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2113697 lines=4679
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4670 |
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
| `chromeBrowserPssKb` | {'int': 4670} |
| `chromeGpuPssKb` | {'int': 4670} |
| `chromeOtherPssKb` | {'int': 4670} |
| `chromeProcesses` | {'int': 4670} |
| `chromeProfiles` | {'int': 4670} |
| `chromeRendererMaxPssKb` | {'int': 4670} |
| `chromeRendererPssKb` | {'int': 4670} |
| `chromeRenderers` | {'int': 4670} |
| `chromeTabs` | {'int': 4670} |
| `chromeTabsProbedProfiles` | {'int': 4670} |
| `chromeUtilityPssKb` | {'int': 4670} |
| `desktopPssKb` | {'int': 4670} |
| `hostPssKb` | {'int': 4670} |
| `kind` | {'str': 4670} |
| `memAvailableKb` | {'int': 4670} |
| `memTotalKb` | {'int': 4670} |
| `otherPssKb` | {'int': 4670} |
| `processes` | {'int': 4670} |
| `pssFallbackProcesses` | {'int': 4670} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
