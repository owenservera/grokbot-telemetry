# sandbox_telemetry_parse — 2026-11-19 15:32:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1332966 lines=2955
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2946 |
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
| `chromeBrowserPssKb` | {'int': 2946} |
| `chromeGpuPssKb` | {'int': 2946} |
| `chromeOtherPssKb` | {'int': 2946} |
| `chromeProcesses` | {'int': 2946} |
| `chromeProfiles` | {'int': 2946} |
| `chromeRendererMaxPssKb` | {'int': 2946} |
| `chromeRendererPssKb` | {'int': 2946} |
| `chromeRenderers` | {'int': 2946} |
| `chromeTabs` | {'int': 2946} |
| `chromeTabsProbedProfiles` | {'int': 2946} |
| `chromeUtilityPssKb` | {'int': 2946} |
| `desktopPssKb` | {'int': 2946} |
| `hostPssKb` | {'int': 2946} |
| `kind` | {'str': 2946} |
| `memAvailableKb` | {'int': 2946} |
| `memTotalKb` | {'int': 2946} |
| `otherPssKb` | {'int': 2946} |
| `processes` | {'int': 2946} |
| `pssFallbackProcesses` | {'int': 2946} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
