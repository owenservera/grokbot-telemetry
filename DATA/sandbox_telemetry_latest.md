# sandbox_telemetry_parse — 2026-11-20 16:56:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1806385 lines=4005
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3992 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3992} |
| `chromeGpuPssKb` | {'int': 3992} |
| `chromeOtherPssKb` | {'int': 3992} |
| `chromeProcesses` | {'int': 3992} |
| `chromeProfiles` | {'int': 3992} |
| `chromeRendererMaxPssKb` | {'int': 3992} |
| `chromeRendererPssKb` | {'int': 3992} |
| `chromeRenderers` | {'int': 3992} |
| `chromeTabs` | {'int': 3992} |
| `chromeTabsProbedProfiles` | {'int': 3992} |
| `chromeUtilityPssKb` | {'int': 3992} |
| `desktopPssKb` | {'int': 3992} |
| `hostPssKb` | {'int': 3992} |
| `kind` | {'str': 3992} |
| `memAvailableKb` | {'int': 3992} |
| `memTotalKb` | {'int': 3992} |
| `otherPssKb` | {'int': 3992} |
| `processes` | {'int': 3992} |
| `pssFallbackProcesses` | {'int': 3992} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
