# sandbox_telemetry_parse — 2026-11-28 11:10:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=861141 lines=1910
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1902 |
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
| `chromeBrowserPssKb` | {'int': 1902} |
| `chromeGpuPssKb` | {'int': 1902} |
| `chromeOtherPssKb` | {'int': 1902} |
| `chromeProcesses` | {'int': 1902} |
| `chromeProfiles` | {'int': 1902} |
| `chromeRendererMaxPssKb` | {'int': 1902} |
| `chromeRendererPssKb` | {'int': 1902} |
| `chromeRenderers` | {'int': 1902} |
| `chromeTabs` | {'int': 1902} |
| `chromeTabsProbedProfiles` | {'int': 1902} |
| `chromeUtilityPssKb` | {'int': 1902} |
| `desktopPssKb` | {'int': 1902} |
| `hostPssKb` | {'int': 1902} |
| `kind` | {'str': 1902} |
| `memAvailableKb` | {'int': 1902} |
| `memTotalKb` | {'int': 1902} |
| `otherPssKb` | {'int': 1902} |
| `processes` | {'int': 1902} |
| `pssFallbackProcesses` | {'int': 1902} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
