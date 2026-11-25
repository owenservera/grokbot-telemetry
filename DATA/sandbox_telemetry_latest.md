# sandbox_telemetry_parse — 2026-11-25 03:25:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2571106 lines=5697
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5682 |
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
| `chromeBrowserPssKb` | {'int': 5682} |
| `chromeGpuPssKb` | {'int': 5682} |
| `chromeOtherPssKb` | {'int': 5682} |
| `chromeProcesses` | {'int': 5682} |
| `chromeProfiles` | {'int': 5682} |
| `chromeRendererMaxPssKb` | {'int': 5682} |
| `chromeRendererPssKb` | {'int': 5682} |
| `chromeRenderers` | {'int': 5682} |
| `chromeTabs` | {'int': 5682} |
| `chromeTabsProbedProfiles` | {'int': 5682} |
| `chromeUtilityPssKb` | {'int': 5682} |
| `desktopPssKb` | {'int': 5682} |
| `hostPssKb` | {'int': 5682} |
| `kind` | {'str': 5682} |
| `memAvailableKb` | {'int': 5682} |
| `memTotalKb` | {'int': 5682} |
| `otherPssKb` | {'int': 5682} |
| `processes` | {'int': 5682} |
| `pssFallbackProcesses` | {'int': 5682} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
