# sandbox_telemetry_parse — 2026-11-26 13:57:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3280321 lines=7265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7250 |
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
| `chromeBrowserPssKb` | {'int': 7250} |
| `chromeGpuPssKb` | {'int': 7250} |
| `chromeOtherPssKb` | {'int': 7250} |
| `chromeProcesses` | {'int': 7250} |
| `chromeProfiles` | {'int': 7250} |
| `chromeRendererMaxPssKb` | {'int': 7250} |
| `chromeRendererPssKb` | {'int': 7250} |
| `chromeRenderers` | {'int': 7250} |
| `chromeTabs` | {'int': 7250} |
| `chromeTabsProbedProfiles` | {'int': 7250} |
| `chromeUtilityPssKb` | {'int': 7250} |
| `desktopPssKb` | {'int': 7250} |
| `hostPssKb` | {'int': 7250} |
| `kind` | {'str': 7250} |
| `memAvailableKb` | {'int': 7250} |
| `memTotalKb` | {'int': 7250} |
| `otherPssKb` | {'int': 7250} |
| `processes` | {'int': 7250} |
| `pssFallbackProcesses` | {'int': 7250} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
