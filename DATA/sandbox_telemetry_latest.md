# sandbox_telemetry_parse — 2026-11-17 01:25:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=194114 lines=435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 428 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 428} |
| `chromeGpuPssKb` | {'int': 428} |
| `chromeOtherPssKb` | {'int': 428} |
| `chromeProcesses` | {'int': 428} |
| `chromeProfiles` | {'int': 428} |
| `chromeRendererMaxPssKb` | {'int': 428} |
| `chromeRendererPssKb` | {'int': 428} |
| `chromeRenderers` | {'int': 428} |
| `chromeTabs` | {'int': 428} |
| `chromeTabsProbedProfiles` | {'int': 428} |
| `chromeUtilityPssKb` | {'int': 428} |
| `desktopPssKb` | {'int': 428} |
| `hostPssKb` | {'int': 428} |
| `kind` | {'str': 428} |
| `memAvailableKb` | {'int': 428} |
| `memTotalKb` | {'int': 428} |
| `otherPssKb` | {'int': 428} |
| `processes` | {'int': 428} |
| `pssFallbackProcesses` | {'int': 428} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
