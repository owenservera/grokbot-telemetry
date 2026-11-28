# sandbox_telemetry_parse — 2026-11-28 10:27:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=846661 lines=1878
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1870 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1870} |
| `chromeGpuPssKb` | {'int': 1870} |
| `chromeOtherPssKb` | {'int': 1870} |
| `chromeProcesses` | {'int': 1870} |
| `chromeProfiles` | {'int': 1870} |
| `chromeRendererMaxPssKb` | {'int': 1870} |
| `chromeRendererPssKb` | {'int': 1870} |
| `chromeRenderers` | {'int': 1870} |
| `chromeTabs` | {'int': 1870} |
| `chromeTabsProbedProfiles` | {'int': 1870} |
| `chromeUtilityPssKb` | {'int': 1870} |
| `desktopPssKb` | {'int': 1870} |
| `hostPssKb` | {'int': 1870} |
| `kind` | {'str': 1870} |
| `memAvailableKb` | {'int': 1870} |
| `memTotalKb` | {'int': 1870} |
| `otherPssKb` | {'int': 1870} |
| `processes` | {'int': 1870} |
| `pssFallbackProcesses` | {'int': 1870} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
