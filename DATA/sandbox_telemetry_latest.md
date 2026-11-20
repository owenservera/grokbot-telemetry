# sandbox_telemetry_parse — 2026-11-20 03:12:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1550718 lines=3438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3427 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3427} |
| `chromeGpuPssKb` | {'int': 3427} |
| `chromeOtherPssKb` | {'int': 3427} |
| `chromeProcesses` | {'int': 3427} |
| `chromeProfiles` | {'int': 3427} |
| `chromeRendererMaxPssKb` | {'int': 3427} |
| `chromeRendererPssKb` | {'int': 3427} |
| `chromeRenderers` | {'int': 3427} |
| `chromeTabs` | {'int': 3427} |
| `chromeTabsProbedProfiles` | {'int': 3427} |
| `chromeUtilityPssKb` | {'int': 3427} |
| `desktopPssKb` | {'int': 3427} |
| `hostPssKb` | {'int': 3427} |
| `kind` | {'str': 3427} |
| `memAvailableKb` | {'int': 3427} |
| `memTotalKb` | {'int': 3427} |
| `otherPssKb` | {'int': 3427} |
| `processes` | {'int': 3427} |
| `pssFallbackProcesses` | {'int': 3427} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
