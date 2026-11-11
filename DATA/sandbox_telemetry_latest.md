# sandbox_telemetry_parse — 2026-11-11 01:30:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1417358 lines=3140
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3131 |
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
| `chromeBrowserPssKb` | {'int': 3131} |
| `chromeGpuPssKb` | {'int': 3131} |
| `chromeOtherPssKb` | {'int': 3131} |
| `chromeProcesses` | {'int': 3131} |
| `chromeProfiles` | {'int': 3131} |
| `chromeRendererMaxPssKb` | {'int': 3131} |
| `chromeRendererPssKb` | {'int': 3131} |
| `chromeRenderers` | {'int': 3131} |
| `chromeTabs` | {'int': 3131} |
| `chromeTabsProbedProfiles` | {'int': 3131} |
| `chromeUtilityPssKb` | {'int': 3131} |
| `desktopPssKb` | {'int': 3131} |
| `hostPssKb` | {'int': 3131} |
| `kind` | {'str': 3131} |
| `memAvailableKb` | {'int': 3131} |
| `memTotalKb` | {'int': 3131} |
| `otherPssKb` | {'int': 3131} |
| `processes` | {'int': 3131} |
| `pssFallbackProcesses` | {'int': 3131} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
