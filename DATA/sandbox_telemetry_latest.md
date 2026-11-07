# sandbox_telemetry_parse — 2026-11-07 13:40:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=486038 lines=1082
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1073 |
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
| `chromeBrowserPssKb` | {'int': 1073} |
| `chromeGpuPssKb` | {'int': 1073} |
| `chromeOtherPssKb` | {'int': 1073} |
| `chromeProcesses` | {'int': 1073} |
| `chromeProfiles` | {'int': 1073} |
| `chromeRendererMaxPssKb` | {'int': 1073} |
| `chromeRendererPssKb` | {'int': 1073} |
| `chromeRenderers` | {'int': 1073} |
| `chromeTabs` | {'int': 1073} |
| `chromeTabsProbedProfiles` | {'int': 1073} |
| `chromeUtilityPssKb` | {'int': 1073} |
| `desktopPssKb` | {'int': 1073} |
| `hostPssKb` | {'int': 1073} |
| `kind` | {'str': 1073} |
| `memAvailableKb` | {'int': 1073} |
| `memTotalKb` | {'int': 1073} |
| `otherPssKb` | {'int': 1073} |
| `processes` | {'int': 1073} |
| `pssFallbackProcesses` | {'int': 1073} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
