# sandbox_telemetry_parse — 2026-11-23 14:43:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1877561 lines=4164
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4149 |
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
| `chromeBrowserPssKb` | {'int': 4149} |
| `chromeGpuPssKb` | {'int': 4149} |
| `chromeOtherPssKb` | {'int': 4149} |
| `chromeProcesses` | {'int': 4149} |
| `chromeProfiles` | {'int': 4149} |
| `chromeRendererMaxPssKb` | {'int': 4149} |
| `chromeRendererPssKb` | {'int': 4149} |
| `chromeRenderers` | {'int': 4149} |
| `chromeTabs` | {'int': 4149} |
| `chromeTabsProbedProfiles` | {'int': 4149} |
| `chromeUtilityPssKb` | {'int': 4149} |
| `desktopPssKb` | {'int': 4149} |
| `hostPssKb` | {'int': 4149} |
| `kind` | {'str': 4149} |
| `memAvailableKb` | {'int': 4149} |
| `memTotalKb` | {'int': 4149} |
| `otherPssKb` | {'int': 4149} |
| `processes` | {'int': 4149} |
| `pssFallbackProcesses` | {'int': 4149} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
