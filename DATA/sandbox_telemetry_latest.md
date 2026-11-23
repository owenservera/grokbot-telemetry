# sandbox_telemetry_parse — 2026-11-23 16:03:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1901117 lines=4216
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4201 |
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
| `chromeBrowserPssKb` | {'int': 4201} |
| `chromeGpuPssKb` | {'int': 4201} |
| `chromeOtherPssKb` | {'int': 4201} |
| `chromeProcesses` | {'int': 4201} |
| `chromeProfiles` | {'int': 4201} |
| `chromeRendererMaxPssKb` | {'int': 4201} |
| `chromeRendererPssKb` | {'int': 4201} |
| `chromeRenderers` | {'int': 4201} |
| `chromeTabs` | {'int': 4201} |
| `chromeTabsProbedProfiles` | {'int': 4201} |
| `chromeUtilityPssKb` | {'int': 4201} |
| `desktopPssKb` | {'int': 4201} |
| `hostPssKb` | {'int': 4201} |
| `kind` | {'str': 4201} |
| `memAvailableKb` | {'int': 4201} |
| `memTotalKb` | {'int': 4201} |
| `otherPssKb` | {'int': 4201} |
| `processes` | {'int': 4201} |
| `pssFallbackProcesses` | {'int': 4201} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
