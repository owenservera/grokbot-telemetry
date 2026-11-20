# sandbox_telemetry_parse — 2026-11-20 03:30:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1557498 lines=3453
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3442 |
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
| `chromeBrowserPssKb` | {'int': 3442} |
| `chromeGpuPssKb` | {'int': 3442} |
| `chromeOtherPssKb` | {'int': 3442} |
| `chromeProcesses` | {'int': 3442} |
| `chromeProfiles` | {'int': 3442} |
| `chromeRendererMaxPssKb` | {'int': 3442} |
| `chromeRendererPssKb` | {'int': 3442} |
| `chromeRenderers` | {'int': 3442} |
| `chromeTabs` | {'int': 3442} |
| `chromeTabsProbedProfiles` | {'int': 3442} |
| `chromeUtilityPssKb` | {'int': 3442} |
| `desktopPssKb` | {'int': 3442} |
| `hostPssKb` | {'int': 3442} |
| `kind` | {'str': 3442} |
| `memAvailableKb` | {'int': 3442} |
| `memTotalKb` | {'int': 3442} |
| `otherPssKb` | {'int': 3442} |
| `processes` | {'int': 3442} |
| `pssFallbackProcesses` | {'int': 3442} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
