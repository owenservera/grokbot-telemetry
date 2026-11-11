# sandbox_telemetry_parse — 2026-11-11 12:24:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1629948 lines=3610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3601 |
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
| `chromeBrowserPssKb` | {'int': 3601} |
| `chromeGpuPssKb` | {'int': 3601} |
| `chromeOtherPssKb` | {'int': 3601} |
| `chromeProcesses` | {'int': 3601} |
| `chromeProfiles` | {'int': 3601} |
| `chromeRendererMaxPssKb` | {'int': 3601} |
| `chromeRendererPssKb` | {'int': 3601} |
| `chromeRenderers` | {'int': 3601} |
| `chromeTabs` | {'int': 3601} |
| `chromeTabsProbedProfiles` | {'int': 3601} |
| `chromeUtilityPssKb` | {'int': 3601} |
| `desktopPssKb` | {'int': 3601} |
| `hostPssKb` | {'int': 3601} |
| `kind` | {'str': 3601} |
| `memAvailableKb` | {'int': 3601} |
| `memTotalKb` | {'int': 3601} |
| `otherPssKb` | {'int': 3601} |
| `processes` | {'int': 3601} |
| `pssFallbackProcesses` | {'int': 3601} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
