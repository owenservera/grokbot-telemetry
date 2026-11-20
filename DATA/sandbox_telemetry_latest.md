# sandbox_telemetry_parse — 2026-11-20 16:28:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1796419 lines=3983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3970 |
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
| `chromeBrowserPssKb` | {'int': 3970} |
| `chromeGpuPssKb` | {'int': 3970} |
| `chromeOtherPssKb` | {'int': 3970} |
| `chromeProcesses` | {'int': 3970} |
| `chromeProfiles` | {'int': 3970} |
| `chromeRendererMaxPssKb` | {'int': 3970} |
| `chromeRendererPssKb` | {'int': 3970} |
| `chromeRenderers` | {'int': 3970} |
| `chromeTabs` | {'int': 3970} |
| `chromeTabsProbedProfiles` | {'int': 3970} |
| `chromeUtilityPssKb` | {'int': 3970} |
| `desktopPssKb` | {'int': 3970} |
| `hostPssKb` | {'int': 3970} |
| `kind` | {'str': 3970} |
| `memAvailableKb` | {'int': 3970} |
| `memTotalKb` | {'int': 3970} |
| `otherPssKb` | {'int': 3970} |
| `processes` | {'int': 3970} |
| `pssFallbackProcesses` | {'int': 3970} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
