# sandbox_telemetry_parse — 2026-11-19 03:15:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1098228 lines=2436
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2427 |
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
| `chromeBrowserPssKb` | {'int': 2427} |
| `chromeGpuPssKb` | {'int': 2427} |
| `chromeOtherPssKb` | {'int': 2427} |
| `chromeProcesses` | {'int': 2427} |
| `chromeProfiles` | {'int': 2427} |
| `chromeRendererMaxPssKb` | {'int': 2427} |
| `chromeRendererPssKb` | {'int': 2427} |
| `chromeRenderers` | {'int': 2427} |
| `chromeTabs` | {'int': 2427} |
| `chromeTabsProbedProfiles` | {'int': 2427} |
| `chromeUtilityPssKb` | {'int': 2427} |
| `desktopPssKb` | {'int': 2427} |
| `hostPssKb` | {'int': 2427} |
| `kind` | {'str': 2427} |
| `memAvailableKb` | {'int': 2427} |
| `memTotalKb` | {'int': 2427} |
| `otherPssKb` | {'int': 2427} |
| `processes` | {'int': 2427} |
| `pssFallbackProcesses` | {'int': 2427} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
