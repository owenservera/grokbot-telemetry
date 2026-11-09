# sandbox_telemetry_parse — 2026-11-09 10:22:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=611806 lines=1360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1351 |
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
| `chromeBrowserPssKb` | {'int': 1351} |
| `chromeGpuPssKb` | {'int': 1351} |
| `chromeOtherPssKb` | {'int': 1351} |
| `chromeProcesses` | {'int': 1351} |
| `chromeProfiles` | {'int': 1351} |
| `chromeRendererMaxPssKb` | {'int': 1351} |
| `chromeRendererPssKb` | {'int': 1351} |
| `chromeRenderers` | {'int': 1351} |
| `chromeTabs` | {'int': 1351} |
| `chromeTabsProbedProfiles` | {'int': 1351} |
| `chromeUtilityPssKb` | {'int': 1351} |
| `desktopPssKb` | {'int': 1351} |
| `hostPssKb` | {'int': 1351} |
| `kind` | {'str': 1351} |
| `memAvailableKb` | {'int': 1351} |
| `memTotalKb` | {'int': 1351} |
| `otherPssKb` | {'int': 1351} |
| `processes` | {'int': 1351} |
| `pssFallbackProcesses` | {'int': 1351} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
