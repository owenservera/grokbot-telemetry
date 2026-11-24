# sandbox_telemetry_parse — 2026-11-24 17:38:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2381561 lines=5278
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5263 |
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
| `chromeBrowserPssKb` | {'int': 5263} |
| `chromeGpuPssKb` | {'int': 5263} |
| `chromeOtherPssKb` | {'int': 5263} |
| `chromeProcesses` | {'int': 5263} |
| `chromeProfiles` | {'int': 5263} |
| `chromeRendererMaxPssKb` | {'int': 5263} |
| `chromeRendererPssKb` | {'int': 5263} |
| `chromeRenderers` | {'int': 5263} |
| `chromeTabs` | {'int': 5263} |
| `chromeTabsProbedProfiles` | {'int': 5263} |
| `chromeUtilityPssKb` | {'int': 5263} |
| `desktopPssKb` | {'int': 5263} |
| `hostPssKb` | {'int': 5263} |
| `kind` | {'str': 5263} |
| `memAvailableKb` | {'int': 5263} |
| `memTotalKb` | {'int': 5263} |
| `otherPssKb` | {'int': 5263} |
| `processes` | {'int': 5263} |
| `pssFallbackProcesses` | {'int': 5263} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
