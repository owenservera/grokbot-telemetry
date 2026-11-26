# sandbox_telemetry_parse — 2026-11-26 08:25:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3160408 lines=7000
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6985 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6985} |
| `chromeGpuPssKb` | {'int': 6985} |
| `chromeOtherPssKb` | {'int': 6985} |
| `chromeProcesses` | {'int': 6985} |
| `chromeProfiles` | {'int': 6985} |
| `chromeRendererMaxPssKb` | {'int': 6985} |
| `chromeRendererPssKb` | {'int': 6985} |
| `chromeRenderers` | {'int': 6985} |
| `chromeTabs` | {'int': 6985} |
| `chromeTabsProbedProfiles` | {'int': 6985} |
| `chromeUtilityPssKb` | {'int': 6985} |
| `desktopPssKb` | {'int': 6985} |
| `hostPssKb` | {'int': 6985} |
| `kind` | {'str': 6985} |
| `memAvailableKb` | {'int': 6985} |
| `memTotalKb` | {'int': 6985} |
| `otherPssKb` | {'int': 6985} |
| `processes` | {'int': 6985} |
| `pssFallbackProcesses` | {'int': 6985} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
