# sandbox_telemetry_parse — 2026-11-20 14:21:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1751018 lines=3881
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3870 |
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
| `chromeBrowserPssKb` | {'int': 3870} |
| `chromeGpuPssKb` | {'int': 3870} |
| `chromeOtherPssKb` | {'int': 3870} |
| `chromeProcesses` | {'int': 3870} |
| `chromeProfiles` | {'int': 3870} |
| `chromeRendererMaxPssKb` | {'int': 3870} |
| `chromeRendererPssKb` | {'int': 3870} |
| `chromeRenderers` | {'int': 3870} |
| `chromeTabs` | {'int': 3870} |
| `chromeTabsProbedProfiles` | {'int': 3870} |
| `chromeUtilityPssKb` | {'int': 3870} |
| `desktopPssKb` | {'int': 3870} |
| `hostPssKb` | {'int': 3870} |
| `kind` | {'str': 3870} |
| `memAvailableKb` | {'int': 3870} |
| `memTotalKb` | {'int': 3870} |
| `otherPssKb` | {'int': 3870} |
| `processes` | {'int': 3870} |
| `pssFallbackProcesses` | {'int': 3870} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
