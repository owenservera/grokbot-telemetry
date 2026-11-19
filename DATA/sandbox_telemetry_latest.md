# sandbox_telemetry_parse — 2026-11-19 16:21:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1348514 lines=2991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2980 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 2980} |
| `chromeGpuPssKb` | {'int': 2980} |
| `chromeOtherPssKb` | {'int': 2980} |
| `chromeProcesses` | {'int': 2980} |
| `chromeProfiles` | {'int': 2980} |
| `chromeRendererMaxPssKb` | {'int': 2980} |
| `chromeRendererPssKb` | {'int': 2980} |
| `chromeRenderers` | {'int': 2980} |
| `chromeTabs` | {'int': 2980} |
| `chromeTabsProbedProfiles` | {'int': 2980} |
| `chromeUtilityPssKb` | {'int': 2980} |
| `desktopPssKb` | {'int': 2980} |
| `hostPssKb` | {'int': 2980} |
| `kind` | {'str': 2980} |
| `memAvailableKb` | {'int': 2980} |
| `memTotalKb` | {'int': 2980} |
| `otherPssKb` | {'int': 2980} |
| `processes` | {'int': 2980} |
| `pssFallbackProcesses` | {'int': 2980} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
