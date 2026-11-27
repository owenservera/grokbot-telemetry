# sandbox_telemetry_parse — 2026-11-27 19:00:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=549854 lines=1222
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1214 |
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
| `chromeBrowserPssKb` | {'int': 1214} |
| `chromeGpuPssKb` | {'int': 1214} |
| `chromeOtherPssKb` | {'int': 1214} |
| `chromeProcesses` | {'int': 1214} |
| `chromeProfiles` | {'int': 1214} |
| `chromeRendererMaxPssKb` | {'int': 1214} |
| `chromeRendererPssKb` | {'int': 1214} |
| `chromeRenderers` | {'int': 1214} |
| `chromeTabs` | {'int': 1214} |
| `chromeTabsProbedProfiles` | {'int': 1214} |
| `chromeUtilityPssKb` | {'int': 1214} |
| `desktopPssKb` | {'int': 1214} |
| `hostPssKb` | {'int': 1214} |
| `kind` | {'str': 1214} |
| `memAvailableKb` | {'int': 1214} |
| `memTotalKb` | {'int': 1214} |
| `otherPssKb` | {'int': 1214} |
| `processes` | {'int': 1214} |
| `pssFallbackProcesses` | {'int': 1214} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
