# sandbox_telemetry_parse — 2026-11-28 00:30:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=657096 lines=1459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1451 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1451} |
| `chromeGpuPssKb` | {'int': 1451} |
| `chromeOtherPssKb` | {'int': 1451} |
| `chromeProcesses` | {'int': 1451} |
| `chromeProfiles` | {'int': 1451} |
| `chromeRendererMaxPssKb` | {'int': 1451} |
| `chromeRendererPssKb` | {'int': 1451} |
| `chromeRenderers` | {'int': 1451} |
| `chromeTabs` | {'int': 1451} |
| `chromeTabsProbedProfiles` | {'int': 1451} |
| `chromeUtilityPssKb` | {'int': 1451} |
| `desktopPssKb` | {'int': 1451} |
| `hostPssKb` | {'int': 1451} |
| `kind` | {'str': 1451} |
| `memAvailableKb` | {'int': 1451} |
| `memTotalKb` | {'int': 1451} |
| `otherPssKb` | {'int': 1451} |
| `processes` | {'int': 1451} |
| `pssFallbackProcesses` | {'int': 1451} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
