# sandbox_telemetry_parse — 2026-11-23 18:17:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1938661 lines=4299
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4284 |
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
| `chromeBrowserPssKb` | {'int': 4284} |
| `chromeGpuPssKb` | {'int': 4284} |
| `chromeOtherPssKb` | {'int': 4284} |
| `chromeProcesses` | {'int': 4284} |
| `chromeProfiles` | {'int': 4284} |
| `chromeRendererMaxPssKb` | {'int': 4284} |
| `chromeRendererPssKb` | {'int': 4284} |
| `chromeRenderers` | {'int': 4284} |
| `chromeTabs` | {'int': 4284} |
| `chromeTabsProbedProfiles` | {'int': 4284} |
| `chromeUtilityPssKb` | {'int': 4284} |
| `desktopPssKb` | {'int': 4284} |
| `hostPssKb` | {'int': 4284} |
| `kind` | {'str': 4284} |
| `memAvailableKb` | {'int': 4284} |
| `memTotalKb` | {'int': 4284} |
| `otherPssKb` | {'int': 4284} |
| `processes` | {'int': 4284} |
| `pssFallbackProcesses` | {'int': 4284} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
