# sandbox_telemetry_parse — 2026-11-11 23:55:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1877041 lines=4156
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4147 |
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
| `chromeBrowserPssKb` | {'int': 4147} |
| `chromeGpuPssKb` | {'int': 4147} |
| `chromeOtherPssKb` | {'int': 4147} |
| `chromeProcesses` | {'int': 4147} |
| `chromeProfiles` | {'int': 4147} |
| `chromeRendererMaxPssKb` | {'int': 4147} |
| `chromeRendererPssKb` | {'int': 4147} |
| `chromeRenderers` | {'int': 4147} |
| `chromeTabs` | {'int': 4147} |
| `chromeTabsProbedProfiles` | {'int': 4147} |
| `chromeUtilityPssKb` | {'int': 4147} |
| `desktopPssKb` | {'int': 4147} |
| `hostPssKb` | {'int': 4147} |
| `kind` | {'str': 4147} |
| `memAvailableKb` | {'int': 4147} |
| `memTotalKb` | {'int': 4147} |
| `otherPssKb` | {'int': 4147} |
| `processes` | {'int': 4147} |
| `pssFallbackProcesses` | {'int': 4147} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
