# sandbox_telemetry_parse — 2026-11-06 22:28:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=193881 lines=436
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 427 |
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
| `chromeBrowserPssKb` | {'int': 427} |
| `chromeGpuPssKb` | {'int': 427} |
| `chromeOtherPssKb` | {'int': 427} |
| `chromeProcesses` | {'int': 427} |
| `chromeProfiles` | {'int': 427} |
| `chromeRendererMaxPssKb` | {'int': 427} |
| `chromeRendererPssKb` | {'int': 427} |
| `chromeRenderers` | {'int': 427} |
| `chromeTabs` | {'int': 427} |
| `chromeTabsProbedProfiles` | {'int': 427} |
| `chromeUtilityPssKb` | {'int': 427} |
| `desktopPssKb` | {'int': 427} |
| `hostPssKb` | {'int': 427} |
| `kind` | {'str': 427} |
| `memAvailableKb` | {'int': 427} |
| `memTotalKb` | {'int': 427} |
| `otherPssKb` | {'int': 427} |
| `processes` | {'int': 427} |
| `pssFallbackProcesses` | {'int': 427} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
