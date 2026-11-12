# sandbox_telemetry_parse — 2026-11-12 10:23:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2082503 lines=4610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4601 |
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
| `chromeBrowserPssKb` | {'int': 4601} |
| `chromeGpuPssKb` | {'int': 4601} |
| `chromeOtherPssKb` | {'int': 4601} |
| `chromeProcesses` | {'int': 4601} |
| `chromeProfiles` | {'int': 4601} |
| `chromeRendererMaxPssKb` | {'int': 4601} |
| `chromeRendererPssKb` | {'int': 4601} |
| `chromeRenderers` | {'int': 4601} |
| `chromeTabs` | {'int': 4601} |
| `chromeTabsProbedProfiles` | {'int': 4601} |
| `chromeUtilityPssKb` | {'int': 4601} |
| `desktopPssKb` | {'int': 4601} |
| `hostPssKb` | {'int': 4601} |
| `kind` | {'str': 4601} |
| `memAvailableKb` | {'int': 4601} |
| `memTotalKb` | {'int': 4601} |
| `otherPssKb` | {'int': 4601} |
| `processes` | {'int': 4601} |
| `pssFallbackProcesses` | {'int': 4601} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
