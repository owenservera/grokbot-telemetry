# sandbox_telemetry_parse — 2026-11-10 23:44:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1381610 lines=3061
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3052 |
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
| `chromeBrowserPssKb` | {'int': 3052} |
| `chromeGpuPssKb` | {'int': 3052} |
| `chromeOtherPssKb` | {'int': 3052} |
| `chromeProcesses` | {'int': 3052} |
| `chromeProfiles` | {'int': 3052} |
| `chromeRendererMaxPssKb` | {'int': 3052} |
| `chromeRendererPssKb` | {'int': 3052} |
| `chromeRenderers` | {'int': 3052} |
| `chromeTabs` | {'int': 3052} |
| `chromeTabsProbedProfiles` | {'int': 3052} |
| `chromeUtilityPssKb` | {'int': 3052} |
| `desktopPssKb` | {'int': 3052} |
| `hostPssKb` | {'int': 3052} |
| `kind` | {'str': 3052} |
| `memAvailableKb` | {'int': 3052} |
| `memTotalKb` | {'int': 3052} |
| `otherPssKb` | {'int': 3052} |
| `processes` | {'int': 3052} |
| `pssFallbackProcesses` | {'int': 3052} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
