# sandbox_telemetry_parse — 2026-11-25 09:42:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2699557 lines=5981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5966 |
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
| `chromeBrowserPssKb` | {'int': 5966} |
| `chromeGpuPssKb` | {'int': 5966} |
| `chromeOtherPssKb` | {'int': 5966} |
| `chromeProcesses` | {'int': 5966} |
| `chromeProfiles` | {'int': 5966} |
| `chromeRendererMaxPssKb` | {'int': 5966} |
| `chromeRendererPssKb` | {'int': 5966} |
| `chromeRenderers` | {'int': 5966} |
| `chromeTabs` | {'int': 5966} |
| `chromeTabsProbedProfiles` | {'int': 5966} |
| `chromeUtilityPssKb` | {'int': 5966} |
| `desktopPssKb` | {'int': 5966} |
| `hostPssKb` | {'int': 5966} |
| `kind` | {'str': 5966} |
| `memAvailableKb` | {'int': 5966} |
| `memTotalKb` | {'int': 5966} |
| `otherPssKb` | {'int': 5966} |
| `processes` | {'int': 5966} |
| `pssFallbackProcesses` | {'int': 5966} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
