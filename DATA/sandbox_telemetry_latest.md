# sandbox_telemetry_parse — 2026-11-24 03:15:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2104731 lines=4666
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4651 |
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
| `chromeBrowserPssKb` | {'int': 4651} |
| `chromeGpuPssKb` | {'int': 4651} |
| `chromeOtherPssKb` | {'int': 4651} |
| `chromeProcesses` | {'int': 4651} |
| `chromeProfiles` | {'int': 4651} |
| `chromeRendererMaxPssKb` | {'int': 4651} |
| `chromeRendererPssKb` | {'int': 4651} |
| `chromeRenderers` | {'int': 4651} |
| `chromeTabs` | {'int': 4651} |
| `chromeTabsProbedProfiles` | {'int': 4651} |
| `chromeUtilityPssKb` | {'int': 4651} |
| `desktopPssKb` | {'int': 4651} |
| `hostPssKb` | {'int': 4651} |
| `kind` | {'str': 4651} |
| `memAvailableKb` | {'int': 4651} |
| `memTotalKb` | {'int': 4651} |
| `otherPssKb` | {'int': 4651} |
| `processes` | {'int': 4651} |
| `pssFallbackProcesses` | {'int': 4651} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
