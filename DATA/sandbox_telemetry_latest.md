# sandbox_telemetry_parse — 2026-11-11 18:16:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1757102 lines=3891
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3882 |
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
| `chromeBrowserPssKb` | {'int': 3882} |
| `chromeGpuPssKb` | {'int': 3882} |
| `chromeOtherPssKb` | {'int': 3882} |
| `chromeProcesses` | {'int': 3882} |
| `chromeProfiles` | {'int': 3882} |
| `chromeRendererMaxPssKb` | {'int': 3882} |
| `chromeRendererPssKb` | {'int': 3882} |
| `chromeRenderers` | {'int': 3882} |
| `chromeTabs` | {'int': 3882} |
| `chromeTabsProbedProfiles` | {'int': 3882} |
| `chromeUtilityPssKb` | {'int': 3882} |
| `desktopPssKb` | {'int': 3882} |
| `hostPssKb` | {'int': 3882} |
| `kind` | {'str': 3882} |
| `memAvailableKb` | {'int': 3882} |
| `memTotalKb` | {'int': 3882} |
| `otherPssKb` | {'int': 3882} |
| `processes` | {'int': 3882} |
| `pssFallbackProcesses` | {'int': 3882} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
