# sandbox_telemetry_parse — 2026-11-25 11:02:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2728501 lines=6045
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6030 |
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
| `chromeBrowserPssKb` | {'int': 6030} |
| `chromeGpuPssKb` | {'int': 6030} |
| `chromeOtherPssKb` | {'int': 6030} |
| `chromeProcesses` | {'int': 6030} |
| `chromeProfiles` | {'int': 6030} |
| `chromeRendererMaxPssKb` | {'int': 6030} |
| `chromeRendererPssKb` | {'int': 6030} |
| `chromeRenderers` | {'int': 6030} |
| `chromeTabs` | {'int': 6030} |
| `chromeTabsProbedProfiles` | {'int': 6030} |
| `chromeUtilityPssKb` | {'int': 6030} |
| `desktopPssKb` | {'int': 6030} |
| `hostPssKb` | {'int': 6030} |
| `kind` | {'str': 6030} |
| `memAvailableKb` | {'int': 6030} |
| `memTotalKb` | {'int': 6030} |
| `otherPssKb` | {'int': 6030} |
| `processes` | {'int': 6030} |
| `pssFallbackProcesses` | {'int': 6030} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
