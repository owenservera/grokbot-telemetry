# sandbox_telemetry_parse — 2026-11-25 12:43:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2761051 lines=6117
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6102 |
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
| `chromeBrowserPssKb` | {'int': 6102} |
| `chromeGpuPssKb` | {'int': 6102} |
| `chromeOtherPssKb` | {'int': 6102} |
| `chromeProcesses` | {'int': 6102} |
| `chromeProfiles` | {'int': 6102} |
| `chromeRendererMaxPssKb` | {'int': 6102} |
| `chromeRendererPssKb` | {'int': 6102} |
| `chromeRenderers` | {'int': 6102} |
| `chromeTabs` | {'int': 6102} |
| `chromeTabsProbedProfiles` | {'int': 6102} |
| `chromeUtilityPssKb` | {'int': 6102} |
| `desktopPssKb` | {'int': 6102} |
| `hostPssKb` | {'int': 6102} |
| `kind` | {'str': 6102} |
| `memAvailableKb` | {'int': 6102} |
| `memTotalKb` | {'int': 6102} |
| `otherPssKb` | {'int': 6102} |
| `processes` | {'int': 6102} |
| `pssFallbackProcesses` | {'int': 6102} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
