# sandbox_telemetry_parse — 2026-11-12 17:43:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2249572 lines=4979
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4970 |
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
| `chromeBrowserPssKb` | {'int': 4970} |
| `chromeGpuPssKb` | {'int': 4970} |
| `chromeOtherPssKb` | {'int': 4970} |
| `chromeProcesses` | {'int': 4970} |
| `chromeProfiles` | {'int': 4970} |
| `chromeRendererMaxPssKb` | {'int': 4970} |
| `chromeRendererPssKb` | {'int': 4970} |
| `chromeRenderers` | {'int': 4970} |
| `chromeTabs` | {'int': 4970} |
| `chromeTabsProbedProfiles` | {'int': 4970} |
| `chromeUtilityPssKb` | {'int': 4970} |
| `desktopPssKb` | {'int': 4970} |
| `hostPssKb` | {'int': 4970} |
| `kind` | {'str': 4970} |
| `memAvailableKb` | {'int': 4970} |
| `memTotalKb` | {'int': 4970} |
| `otherPssKb` | {'int': 4970} |
| `processes` | {'int': 4970} |
| `pssFallbackProcesses` | {'int': 4970} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
