# sandbox_telemetry_parse — 2026-11-20 20:13:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1865195 lines=4135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4122 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4122} |
| `chromeGpuPssKb` | {'int': 4122} |
| `chromeOtherPssKb` | {'int': 4122} |
| `chromeProcesses` | {'int': 4122} |
| `chromeProfiles` | {'int': 4122} |
| `chromeRendererMaxPssKb` | {'int': 4122} |
| `chromeRendererPssKb` | {'int': 4122} |
| `chromeRenderers` | {'int': 4122} |
| `chromeTabs` | {'int': 4122} |
| `chromeTabsProbedProfiles` | {'int': 4122} |
| `chromeUtilityPssKb` | {'int': 4122} |
| `desktopPssKb` | {'int': 4122} |
| `hostPssKb` | {'int': 4122} |
| `kind` | {'str': 4122} |
| `memAvailableKb` | {'int': 4122} |
| `memTotalKb` | {'int': 4122} |
| `otherPssKb` | {'int': 4122} |
| `processes` | {'int': 4122} |
| `pssFallbackProcesses` | {'int': 4122} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
