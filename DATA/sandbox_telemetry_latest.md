# sandbox_telemetry_parse — 2026-11-24 02:02:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2084384 lines=4621
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4606 |
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
| `chromeBrowserPssKb` | {'int': 4606} |
| `chromeGpuPssKb` | {'int': 4606} |
| `chromeOtherPssKb` | {'int': 4606} |
| `chromeProcesses` | {'int': 4606} |
| `chromeProfiles` | {'int': 4606} |
| `chromeRendererMaxPssKb` | {'int': 4606} |
| `chromeRendererPssKb` | {'int': 4606} |
| `chromeRenderers` | {'int': 4606} |
| `chromeTabs` | {'int': 4606} |
| `chromeTabsProbedProfiles` | {'int': 4606} |
| `chromeUtilityPssKb` | {'int': 4606} |
| `desktopPssKb` | {'int': 4606} |
| `hostPssKb` | {'int': 4606} |
| `kind` | {'str': 4606} |
| `memAvailableKb` | {'int': 4606} |
| `memTotalKb` | {'int': 4606} |
| `otherPssKb` | {'int': 4606} |
| `processes` | {'int': 4606} |
| `pssFallbackProcesses` | {'int': 4606} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
