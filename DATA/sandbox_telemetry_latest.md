# sandbox_telemetry_parse — 2026-11-25 09:38:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2697745 lines=5977
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5962 |
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
| `chromeBrowserPssKb` | {'int': 5962} |
| `chromeGpuPssKb` | {'int': 5962} |
| `chromeOtherPssKb` | {'int': 5962} |
| `chromeProcesses` | {'int': 5962} |
| `chromeProfiles` | {'int': 5962} |
| `chromeRendererMaxPssKb` | {'int': 5962} |
| `chromeRendererPssKb` | {'int': 5962} |
| `chromeRenderers` | {'int': 5962} |
| `chromeTabs` | {'int': 5962} |
| `chromeTabsProbedProfiles` | {'int': 5962} |
| `chromeUtilityPssKb` | {'int': 5962} |
| `desktopPssKb` | {'int': 5962} |
| `hostPssKb` | {'int': 5962} |
| `kind` | {'str': 5962} |
| `memAvailableKb` | {'int': 5962} |
| `memTotalKb` | {'int': 5962} |
| `otherPssKb` | {'int': 5962} |
| `processes` | {'int': 5962} |
| `pssFallbackProcesses` | {'int': 5962} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
