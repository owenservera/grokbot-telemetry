# sandbox_telemetry_parse — 2026-11-06 19:23:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=129192 lines=293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 284 |
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
| `chromeBrowserPssKb` | {'int': 284} |
| `chromeGpuPssKb` | {'int': 284} |
| `chromeOtherPssKb` | {'int': 284} |
| `chromeProcesses` | {'int': 284} |
| `chromeProfiles` | {'int': 284} |
| `chromeRendererMaxPssKb` | {'int': 284} |
| `chromeRendererPssKb` | {'int': 284} |
| `chromeRenderers` | {'int': 284} |
| `chromeTabs` | {'int': 284} |
| `chromeTabsProbedProfiles` | {'int': 284} |
| `chromeUtilityPssKb` | {'int': 284} |
| `desktopPssKb` | {'int': 284} |
| `hostPssKb` | {'int': 284} |
| `kind` | {'str': 284} |
| `memAvailableKb` | {'int': 284} |
| `memTotalKb` | {'int': 284} |
| `otherPssKb` | {'int': 284} |
| `processes` | {'int': 284} |
| `pssFallbackProcesses` | {'int': 284} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
