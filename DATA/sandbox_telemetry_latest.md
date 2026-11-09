# sandbox_telemetry_parse — 2026-11-10 00:11:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=898728 lines=1994
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1985 |
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
| `chromeBrowserPssKb` | {'int': 1985} |
| `chromeGpuPssKb` | {'int': 1985} |
| `chromeOtherPssKb` | {'int': 1985} |
| `chromeProcesses` | {'int': 1985} |
| `chromeProfiles` | {'int': 1985} |
| `chromeRendererMaxPssKb` | {'int': 1985} |
| `chromeRendererPssKb` | {'int': 1985} |
| `chromeRenderers` | {'int': 1985} |
| `chromeTabs` | {'int': 1985} |
| `chromeTabsProbedProfiles` | {'int': 1985} |
| `chromeUtilityPssKb` | {'int': 1985} |
| `desktopPssKb` | {'int': 1985} |
| `hostPssKb` | {'int': 1985} |
| `kind` | {'str': 1985} |
| `memAvailableKb` | {'int': 1985} |
| `memTotalKb` | {'int': 1985} |
| `otherPssKb` | {'int': 1985} |
| `processes` | {'int': 1985} |
| `pssFallbackProcesses` | {'int': 1985} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
