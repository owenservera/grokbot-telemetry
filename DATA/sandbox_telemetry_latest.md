# sandbox_telemetry_parse — 2026-11-12 20:47:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2322499 lines=5140
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5131 |
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
| `chromeBrowserPssKb` | {'int': 5131} |
| `chromeGpuPssKb` | {'int': 5131} |
| `chromeOtherPssKb` | {'int': 5131} |
| `chromeProcesses` | {'int': 5131} |
| `chromeProfiles` | {'int': 5131} |
| `chromeRendererMaxPssKb` | {'int': 5131} |
| `chromeRendererPssKb` | {'int': 5131} |
| `chromeRenderers` | {'int': 5131} |
| `chromeTabs` | {'int': 5131} |
| `chromeTabsProbedProfiles` | {'int': 5131} |
| `chromeUtilityPssKb` | {'int': 5131} |
| `desktopPssKb` | {'int': 5131} |
| `hostPssKb` | {'int': 5131} |
| `kind` | {'str': 5131} |
| `memAvailableKb` | {'int': 5131} |
| `memTotalKb` | {'int': 5131} |
| `otherPssKb` | {'int': 5131} |
| `processes` | {'int': 5131} |
| `pssFallbackProcesses` | {'int': 5131} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
