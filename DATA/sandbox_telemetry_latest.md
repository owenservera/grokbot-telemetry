# sandbox_telemetry_parse — 2026-11-20 17:07:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1809102 lines=4011
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3998 |
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
| `chromeBrowserPssKb` | {'int': 3998} |
| `chromeGpuPssKb` | {'int': 3998} |
| `chromeOtherPssKb` | {'int': 3998} |
| `chromeProcesses` | {'int': 3998} |
| `chromeProfiles` | {'int': 3998} |
| `chromeRendererMaxPssKb` | {'int': 3998} |
| `chromeRendererPssKb` | {'int': 3998} |
| `chromeRenderers` | {'int': 3998} |
| `chromeTabs` | {'int': 3998} |
| `chromeTabsProbedProfiles` | {'int': 3998} |
| `chromeUtilityPssKb` | {'int': 3998} |
| `desktopPssKb` | {'int': 3998} |
| `hostPssKb` | {'int': 3998} |
| `kind` | {'str': 3998} |
| `memAvailableKb` | {'int': 3998} |
| `memTotalKb` | {'int': 3998} |
| `otherPssKb` | {'int': 3998} |
| `processes` | {'int': 3998} |
| `pssFallbackProcesses` | {'int': 3998} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
