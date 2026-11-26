# sandbox_telemetry_parse — 2026-11-26 04:10:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3063594 lines=6786
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6771 |
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
| `chromeBrowserPssKb` | {'int': 6771} |
| `chromeGpuPssKb` | {'int': 6771} |
| `chromeOtherPssKb` | {'int': 6771} |
| `chromeProcesses` | {'int': 6771} |
| `chromeProfiles` | {'int': 6771} |
| `chromeRendererMaxPssKb` | {'int': 6771} |
| `chromeRendererPssKb` | {'int': 6771} |
| `chromeRenderers` | {'int': 6771} |
| `chromeTabs` | {'int': 6771} |
| `chromeTabsProbedProfiles` | {'int': 6771} |
| `chromeUtilityPssKb` | {'int': 6771} |
| `desktopPssKb` | {'int': 6771} |
| `hostPssKb` | {'int': 6771} |
| `kind` | {'str': 6771} |
| `memAvailableKb` | {'int': 6771} |
| `memTotalKb` | {'int': 6771} |
| `otherPssKb` | {'int': 6771} |
| `processes` | {'int': 6771} |
| `pssFallbackProcesses` | {'int': 6771} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
