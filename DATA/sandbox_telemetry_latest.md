# sandbox_telemetry_parse — 2026-11-09 09:30:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=595524 lines=1324
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1315 |
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
| `chromeBrowserPssKb` | {'int': 1315} |
| `chromeGpuPssKb` | {'int': 1315} |
| `chromeOtherPssKb` | {'int': 1315} |
| `chromeProcesses` | {'int': 1315} |
| `chromeProfiles` | {'int': 1315} |
| `chromeRendererMaxPssKb` | {'int': 1315} |
| `chromeRendererPssKb` | {'int': 1315} |
| `chromeRenderers` | {'int': 1315} |
| `chromeTabs` | {'int': 1315} |
| `chromeTabsProbedProfiles` | {'int': 1315} |
| `chromeUtilityPssKb` | {'int': 1315} |
| `desktopPssKb` | {'int': 1315} |
| `hostPssKb` | {'int': 1315} |
| `kind` | {'str': 1315} |
| `memAvailableKb` | {'int': 1315} |
| `memTotalKb` | {'int': 1315} |
| `otherPssKb` | {'int': 1315} |
| `processes` | {'int': 1315} |
| `pssFallbackProcesses` | {'int': 1315} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
