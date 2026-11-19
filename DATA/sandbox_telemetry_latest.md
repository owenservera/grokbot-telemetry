# sandbox_telemetry_parse — 2026-11-19 08:40:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1191364 lines=2642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2633 |
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
| `chromeBrowserPssKb` | {'int': 2633} |
| `chromeGpuPssKb` | {'int': 2633} |
| `chromeOtherPssKb` | {'int': 2633} |
| `chromeProcesses` | {'int': 2633} |
| `chromeProfiles` | {'int': 2633} |
| `chromeRendererMaxPssKb` | {'int': 2633} |
| `chromeRendererPssKb` | {'int': 2633} |
| `chromeRenderers` | {'int': 2633} |
| `chromeTabs` | {'int': 2633} |
| `chromeTabsProbedProfiles` | {'int': 2633} |
| `chromeUtilityPssKb` | {'int': 2633} |
| `desktopPssKb` | {'int': 2633} |
| `hostPssKb` | {'int': 2633} |
| `kind` | {'str': 2633} |
| `memAvailableKb` | {'int': 2633} |
| `memTotalKb` | {'int': 2633} |
| `otherPssKb` | {'int': 2633} |
| `processes` | {'int': 2633} |
| `pssFallbackProcesses` | {'int': 2633} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
