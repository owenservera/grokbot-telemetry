# sandbox_telemetry_parse — 2026-11-19 16:26:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1350779 lines=2996
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2985 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 2985} |
| `chromeGpuPssKb` | {'int': 2985} |
| `chromeOtherPssKb` | {'int': 2985} |
| `chromeProcesses` | {'int': 2985} |
| `chromeProfiles` | {'int': 2985} |
| `chromeRendererMaxPssKb` | {'int': 2985} |
| `chromeRendererPssKb` | {'int': 2985} |
| `chromeRenderers` | {'int': 2985} |
| `chromeTabs` | {'int': 2985} |
| `chromeTabsProbedProfiles` | {'int': 2985} |
| `chromeUtilityPssKb` | {'int': 2985} |
| `desktopPssKb` | {'int': 2985} |
| `hostPssKb` | {'int': 2985} |
| `kind` | {'str': 2985} |
| `memAvailableKb` | {'int': 2985} |
| `memTotalKb` | {'int': 2985} |
| `otherPssKb` | {'int': 2985} |
| `processes` | {'int': 2985} |
| `pssFallbackProcesses` | {'int': 2985} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
