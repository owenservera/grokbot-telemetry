# sandbox_telemetry_parse — 2026-11-10 23:21:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1371652 lines=3039
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3030 |
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
| `chromeBrowserPssKb` | {'int': 3030} |
| `chromeGpuPssKb` | {'int': 3030} |
| `chromeOtherPssKb` | {'int': 3030} |
| `chromeProcesses` | {'int': 3030} |
| `chromeProfiles` | {'int': 3030} |
| `chromeRendererMaxPssKb` | {'int': 3030} |
| `chromeRendererPssKb` | {'int': 3030} |
| `chromeRenderers` | {'int': 3030} |
| `chromeTabs` | {'int': 3030} |
| `chromeTabsProbedProfiles` | {'int': 3030} |
| `chromeUtilityPssKb` | {'int': 3030} |
| `desktopPssKb` | {'int': 3030} |
| `hostPssKb` | {'int': 3030} |
| `kind` | {'str': 3030} |
| `memAvailableKb` | {'int': 3030} |
| `memTotalKb` | {'int': 3030} |
| `otherPssKb` | {'int': 3030} |
| `processes` | {'int': 3030} |
| `pssFallbackProcesses` | {'int': 3030} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
