# sandbox_telemetry_parse — 2026-11-25 13:25:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2774166 lines=6146
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6131 |
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
| `chromeBrowserPssKb` | {'int': 6131} |
| `chromeGpuPssKb` | {'int': 6131} |
| `chromeOtherPssKb` | {'int': 6131} |
| `chromeProcesses` | {'int': 6131} |
| `chromeProfiles` | {'int': 6131} |
| `chromeRendererMaxPssKb` | {'int': 6131} |
| `chromeRendererPssKb` | {'int': 6131} |
| `chromeRenderers` | {'int': 6131} |
| `chromeTabs` | {'int': 6131} |
| `chromeTabsProbedProfiles` | {'int': 6131} |
| `chromeUtilityPssKb` | {'int': 6131} |
| `desktopPssKb` | {'int': 6131} |
| `hostPssKb` | {'int': 6131} |
| `kind` | {'str': 6131} |
| `memAvailableKb` | {'int': 6131} |
| `memTotalKb` | {'int': 6131} |
| `otherPssKb` | {'int': 6131} |
| `processes` | {'int': 6131} |
| `pssFallbackProcesses` | {'int': 6131} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
