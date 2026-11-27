# sandbox_telemetry_parse — 2026-11-27 03:18:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=210966 lines=473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 465 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 465} |
| `chromeGpuPssKb` | {'int': 465} |
| `chromeOtherPssKb` | {'int': 465} |
| `chromeProcesses` | {'int': 465} |
| `chromeProfiles` | {'int': 465} |
| `chromeRendererMaxPssKb` | {'int': 465} |
| `chromeRendererPssKb` | {'int': 465} |
| `chromeRenderers` | {'int': 465} |
| `chromeTabs` | {'int': 465} |
| `chromeTabsProbedProfiles` | {'int': 465} |
| `chromeUtilityPssKb` | {'int': 465} |
| `desktopPssKb` | {'int': 465} |
| `hostPssKb` | {'int': 465} |
| `kind` | {'str': 465} |
| `memAvailableKb` | {'int': 465} |
| `memTotalKb` | {'int': 465} |
| `otherPssKb` | {'int': 465} |
| `processes` | {'int': 465} |
| `pssFallbackProcesses` | {'int': 465} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
