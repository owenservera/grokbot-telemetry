# sandbox_telemetry_parse — 2026-11-25 12:42:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2760147 lines=6115
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6100 |
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
| `chromeBrowserPssKb` | {'int': 6100} |
| `chromeGpuPssKb` | {'int': 6100} |
| `chromeOtherPssKb` | {'int': 6100} |
| `chromeProcesses` | {'int': 6100} |
| `chromeProfiles` | {'int': 6100} |
| `chromeRendererMaxPssKb` | {'int': 6100} |
| `chromeRendererPssKb` | {'int': 6100} |
| `chromeRenderers` | {'int': 6100} |
| `chromeTabs` | {'int': 6100} |
| `chromeTabsProbedProfiles` | {'int': 6100} |
| `chromeUtilityPssKb` | {'int': 6100} |
| `desktopPssKb` | {'int': 6100} |
| `hostPssKb` | {'int': 6100} |
| `kind` | {'str': 6100} |
| `memAvailableKb` | {'int': 6100} |
| `memTotalKb` | {'int': 6100} |
| `otherPssKb` | {'int': 6100} |
| `processes` | {'int': 6100} |
| `pssFallbackProcesses` | {'int': 6100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
