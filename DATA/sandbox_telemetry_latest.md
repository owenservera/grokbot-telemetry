# sandbox_telemetry_parse — 2026-11-25 17:01:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2843354 lines=6299
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6284 |
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
| `chromeBrowserPssKb` | {'int': 6284} |
| `chromeGpuPssKb` | {'int': 6284} |
| `chromeOtherPssKb` | {'int': 6284} |
| `chromeProcesses` | {'int': 6284} |
| `chromeProfiles` | {'int': 6284} |
| `chromeRendererMaxPssKb` | {'int': 6284} |
| `chromeRendererPssKb` | {'int': 6284} |
| `chromeRenderers` | {'int': 6284} |
| `chromeTabs` | {'int': 6284} |
| `chromeTabsProbedProfiles` | {'int': 6284} |
| `chromeUtilityPssKb` | {'int': 6284} |
| `desktopPssKb` | {'int': 6284} |
| `hostPssKb` | {'int': 6284} |
| `kind` | {'str': 6284} |
| `memAvailableKb` | {'int': 6284} |
| `memTotalKb` | {'int': 6284} |
| `otherPssKb` | {'int': 6284} |
| `processes` | {'int': 6284} |
| `pssFallbackProcesses` | {'int': 6284} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
