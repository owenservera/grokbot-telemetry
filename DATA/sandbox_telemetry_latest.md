# sandbox_telemetry_parse — 2026-11-07 07:18:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=357578 lines=798
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 789 |
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
| `chromeBrowserPssKb` | {'int': 789} |
| `chromeGpuPssKb` | {'int': 789} |
| `chromeOtherPssKb` | {'int': 789} |
| `chromeProcesses` | {'int': 789} |
| `chromeProfiles` | {'int': 789} |
| `chromeRendererMaxPssKb` | {'int': 789} |
| `chromeRendererPssKb` | {'int': 789} |
| `chromeRenderers` | {'int': 789} |
| `chromeTabs` | {'int': 789} |
| `chromeTabsProbedProfiles` | {'int': 789} |
| `chromeUtilityPssKb` | {'int': 789} |
| `desktopPssKb` | {'int': 789} |
| `hostPssKb` | {'int': 789} |
| `kind` | {'str': 789} |
| `memAvailableKb` | {'int': 789} |
| `memTotalKb` | {'int': 789} |
| `otherPssKb` | {'int': 789} |
| `processes` | {'int': 789} |
| `pssFallbackProcesses` | {'int': 789} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
