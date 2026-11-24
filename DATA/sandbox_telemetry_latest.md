# sandbox_telemetry_parse — 2026-11-24 08:22:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2203759 lines=4885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4870 |
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
| `chromeBrowserPssKb` | {'int': 4870} |
| `chromeGpuPssKb` | {'int': 4870} |
| `chromeOtherPssKb` | {'int': 4870} |
| `chromeProcesses` | {'int': 4870} |
| `chromeProfiles` | {'int': 4870} |
| `chromeRendererMaxPssKb` | {'int': 4870} |
| `chromeRendererPssKb` | {'int': 4870} |
| `chromeRenderers` | {'int': 4870} |
| `chromeTabs` | {'int': 4870} |
| `chromeTabsProbedProfiles` | {'int': 4870} |
| `chromeUtilityPssKb` | {'int': 4870} |
| `desktopPssKb` | {'int': 4870} |
| `hostPssKb` | {'int': 4870} |
| `kind` | {'str': 4870} |
| `memAvailableKb` | {'int': 4870} |
| `memTotalKb` | {'int': 4870} |
| `otherPssKb` | {'int': 4870} |
| `processes` | {'int': 4870} |
| `pssFallbackProcesses` | {'int': 4870} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
