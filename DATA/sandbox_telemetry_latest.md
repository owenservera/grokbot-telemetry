# sandbox_telemetry_parse — 2026-11-26 14:41:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3295700 lines=7299
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7284 |
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
| `chromeBrowserPssKb` | {'int': 7284} |
| `chromeGpuPssKb` | {'int': 7284} |
| `chromeOtherPssKb` | {'int': 7284} |
| `chromeProcesses` | {'int': 7284} |
| `chromeProfiles` | {'int': 7284} |
| `chromeRendererMaxPssKb` | {'int': 7284} |
| `chromeRendererPssKb` | {'int': 7284} |
| `chromeRenderers` | {'int': 7284} |
| `chromeTabs` | {'int': 7284} |
| `chromeTabsProbedProfiles` | {'int': 7284} |
| `chromeUtilityPssKb` | {'int': 7284} |
| `desktopPssKb` | {'int': 7284} |
| `hostPssKb` | {'int': 7284} |
| `kind` | {'str': 7284} |
| `memAvailableKb` | {'int': 7284} |
| `memTotalKb` | {'int': 7284} |
| `otherPssKb` | {'int': 7284} |
| `processes` | {'int': 7284} |
| `pssFallbackProcesses` | {'int': 7284} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
