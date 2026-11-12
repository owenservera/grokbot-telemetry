# sandbox_telemetry_parse — 2026-11-12 17:39:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2247760 lines=4975
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4966 |
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
| `chromeBrowserPssKb` | {'int': 4966} |
| `chromeGpuPssKb` | {'int': 4966} |
| `chromeOtherPssKb` | {'int': 4966} |
| `chromeProcesses` | {'int': 4966} |
| `chromeProfiles` | {'int': 4966} |
| `chromeRendererMaxPssKb` | {'int': 4966} |
| `chromeRendererPssKb` | {'int': 4966} |
| `chromeRenderers` | {'int': 4966} |
| `chromeTabs` | {'int': 4966} |
| `chromeTabsProbedProfiles` | {'int': 4966} |
| `chromeUtilityPssKb` | {'int': 4966} |
| `desktopPssKb` | {'int': 4966} |
| `hostPssKb` | {'int': 4966} |
| `kind` | {'str': 4966} |
| `memAvailableKb` | {'int': 4966} |
| `memTotalKb` | {'int': 4966} |
| `otherPssKb` | {'int': 4966} |
| `processes` | {'int': 4966} |
| `pssFallbackProcesses` | {'int': 4966} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
