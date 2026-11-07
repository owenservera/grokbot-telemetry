# sandbox_telemetry_parse — 2026-11-07 02:32:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=272583 lines=610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 601 |
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
| `chromeBrowserPssKb` | {'int': 601} |
| `chromeGpuPssKb` | {'int': 601} |
| `chromeOtherPssKb` | {'int': 601} |
| `chromeProcesses` | {'int': 601} |
| `chromeProfiles` | {'int': 601} |
| `chromeRendererMaxPssKb` | {'int': 601} |
| `chromeRendererPssKb` | {'int': 601} |
| `chromeRenderers` | {'int': 601} |
| `chromeTabs` | {'int': 601} |
| `chromeTabsProbedProfiles` | {'int': 601} |
| `chromeUtilityPssKb` | {'int': 601} |
| `desktopPssKb` | {'int': 601} |
| `hostPssKb` | {'int': 601} |
| `kind` | {'str': 601} |
| `memAvailableKb` | {'int': 601} |
| `memTotalKb` | {'int': 601} |
| `otherPssKb` | {'int': 601} |
| `processes` | {'int': 601} |
| `pssFallbackProcesses` | {'int': 601} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
