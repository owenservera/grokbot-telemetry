# sandbox_telemetry_parse — 2026-11-11 20:27:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1803719 lines=3994
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3985 |
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
| `chromeBrowserPssKb` | {'int': 3985} |
| `chromeGpuPssKb` | {'int': 3985} |
| `chromeOtherPssKb` | {'int': 3985} |
| `chromeProcesses` | {'int': 3985} |
| `chromeProfiles` | {'int': 3985} |
| `chromeRendererMaxPssKb` | {'int': 3985} |
| `chromeRendererPssKb` | {'int': 3985} |
| `chromeRenderers` | {'int': 3985} |
| `chromeTabs` | {'int': 3985} |
| `chromeTabsProbedProfiles` | {'int': 3985} |
| `chromeUtilityPssKb` | {'int': 3985} |
| `desktopPssKb` | {'int': 3985} |
| `hostPssKb` | {'int': 3985} |
| `kind` | {'str': 3985} |
| `memAvailableKb` | {'int': 3985} |
| `memTotalKb` | {'int': 3985} |
| `otherPssKb` | {'int': 3985} |
| `processes` | {'int': 3985} |
| `pssFallbackProcesses` | {'int': 3985} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
