# sandbox_telemetry_parse — 2026-11-19 17:54:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1380215 lines=3061
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3050 |
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
| `chromeBrowserPssKb` | {'int': 3050} |
| `chromeGpuPssKb` | {'int': 3050} |
| `chromeOtherPssKb` | {'int': 3050} |
| `chromeProcesses` | {'int': 3050} |
| `chromeProfiles` | {'int': 3050} |
| `chromeRendererMaxPssKb` | {'int': 3050} |
| `chromeRendererPssKb` | {'int': 3050} |
| `chromeRenderers` | {'int': 3050} |
| `chromeTabs` | {'int': 3050} |
| `chromeTabsProbedProfiles` | {'int': 3050} |
| `chromeUtilityPssKb` | {'int': 3050} |
| `desktopPssKb` | {'int': 3050} |
| `hostPssKb` | {'int': 3050} |
| `kind` | {'str': 3050} |
| `memAvailableKb` | {'int': 3050} |
| `memTotalKb` | {'int': 3050} |
| `otherPssKb` | {'int': 3050} |
| `processes` | {'int': 3050} |
| `pssFallbackProcesses` | {'int': 3050} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
