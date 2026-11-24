# sandbox_telemetry_parse — 2026-11-24 19:30:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2419149 lines=5361
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5346 |
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
| `chromeBrowserPssKb` | {'int': 5346} |
| `chromeGpuPssKb` | {'int': 5346} |
| `chromeOtherPssKb` | {'int': 5346} |
| `chromeProcesses` | {'int': 5346} |
| `chromeProfiles` | {'int': 5346} |
| `chromeRendererMaxPssKb` | {'int': 5346} |
| `chromeRendererPssKb` | {'int': 5346} |
| `chromeRenderers` | {'int': 5346} |
| `chromeTabs` | {'int': 5346} |
| `chromeTabsProbedProfiles` | {'int': 5346} |
| `chromeUtilityPssKb` | {'int': 5346} |
| `desktopPssKb` | {'int': 5346} |
| `hostPssKb` | {'int': 5346} |
| `kind` | {'str': 5346} |
| `memAvailableKb` | {'int': 5346} |
| `memTotalKb` | {'int': 5346} |
| `otherPssKb` | {'int': 5346} |
| `processes` | {'int': 5346} |
| `pssFallbackProcesses` | {'int': 5346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
