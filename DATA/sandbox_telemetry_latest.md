# sandbox_telemetry_parse — 2026-11-27 13:36:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=439373 lines=978
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 970 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 970} |
| `chromeGpuPssKb` | {'int': 970} |
| `chromeOtherPssKb` | {'int': 970} |
| `chromeProcesses` | {'int': 970} |
| `chromeProfiles` | {'int': 970} |
| `chromeRendererMaxPssKb` | {'int': 970} |
| `chromeRendererPssKb` | {'int': 970} |
| `chromeRenderers` | {'int': 970} |
| `chromeTabs` | {'int': 970} |
| `chromeTabsProbedProfiles` | {'int': 970} |
| `chromeUtilityPssKb` | {'int': 970} |
| `desktopPssKb` | {'int': 970} |
| `hostPssKb` | {'int': 970} |
| `kind` | {'str': 970} |
| `memAvailableKb` | {'int': 970} |
| `memTotalKb` | {'int': 970} |
| `otherPssKb` | {'int': 970} |
| `processes` | {'int': 970} |
| `pssFallbackProcesses` | {'int': 970} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
