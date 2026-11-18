# sandbox_telemetry_parse — 2026-11-18 16:28:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=891495 lines=1979
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1970 |
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
| `chromeBrowserPssKb` | {'int': 1970} |
| `chromeGpuPssKb` | {'int': 1970} |
| `chromeOtherPssKb` | {'int': 1970} |
| `chromeProcesses` | {'int': 1970} |
| `chromeProfiles` | {'int': 1970} |
| `chromeRendererMaxPssKb` | {'int': 1970} |
| `chromeRendererPssKb` | {'int': 1970} |
| `chromeRenderers` | {'int': 1970} |
| `chromeTabs` | {'int': 1970} |
| `chromeTabsProbedProfiles` | {'int': 1970} |
| `chromeUtilityPssKb` | {'int': 1970} |
| `desktopPssKb` | {'int': 1970} |
| `hostPssKb` | {'int': 1970} |
| `kind` | {'str': 1970} |
| `memAvailableKb` | {'int': 1970} |
| `memTotalKb` | {'int': 1970} |
| `otherPssKb` | {'int': 1970} |
| `processes` | {'int': 1970} |
| `pssFallbackProcesses` | {'int': 1970} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
