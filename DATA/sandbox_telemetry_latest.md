# sandbox_telemetry_parse — 2026-11-26 03:23:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3050022 lines=6755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6740 |
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
| `chromeBrowserPssKb` | {'int': 6740} |
| `chromeGpuPssKb` | {'int': 6740} |
| `chromeOtherPssKb` | {'int': 6740} |
| `chromeProcesses` | {'int': 6740} |
| `chromeProfiles` | {'int': 6740} |
| `chromeRendererMaxPssKb` | {'int': 6740} |
| `chromeRendererPssKb` | {'int': 6740} |
| `chromeRenderers` | {'int': 6740} |
| `chromeTabs` | {'int': 6740} |
| `chromeTabsProbedProfiles` | {'int': 6740} |
| `chromeUtilityPssKb` | {'int': 6740} |
| `desktopPssKb` | {'int': 6740} |
| `hostPssKb` | {'int': 6740} |
| `kind` | {'str': 6740} |
| `memAvailableKb` | {'int': 6740} |
| `memTotalKb` | {'int': 6740} |
| `otherPssKb` | {'int': 6740} |
| `processes` | {'int': 6740} |
| `pssFallbackProcesses` | {'int': 6740} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
