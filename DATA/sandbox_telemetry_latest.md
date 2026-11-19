# sandbox_telemetry_parse — 2026-11-19 16:06:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1343838 lines=2979
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2970 |
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
| `chromeBrowserPssKb` | {'int': 2970} |
| `chromeGpuPssKb` | {'int': 2970} |
| `chromeOtherPssKb` | {'int': 2970} |
| `chromeProcesses` | {'int': 2970} |
| `chromeProfiles` | {'int': 2970} |
| `chromeRendererMaxPssKb` | {'int': 2970} |
| `chromeRendererPssKb` | {'int': 2970} |
| `chromeRenderers` | {'int': 2970} |
| `chromeTabs` | {'int': 2970} |
| `chromeTabsProbedProfiles` | {'int': 2970} |
| `chromeUtilityPssKb` | {'int': 2970} |
| `desktopPssKb` | {'int': 2970} |
| `hostPssKb` | {'int': 2970} |
| `kind` | {'str': 2970} |
| `memAvailableKb` | {'int': 2970} |
| `memTotalKb` | {'int': 2970} |
| `otherPssKb` | {'int': 2970} |
| `processes` | {'int': 2970} |
| `pssFallbackProcesses` | {'int': 2970} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
