# sandbox_telemetry_parse — 2026-11-26 05:25:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3094367 lines=6854
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6839 |
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
| `chromeBrowserPssKb` | {'int': 6839} |
| `chromeGpuPssKb` | {'int': 6839} |
| `chromeOtherPssKb` | {'int': 6839} |
| `chromeProcesses` | {'int': 6839} |
| `chromeProfiles` | {'int': 6839} |
| `chromeRendererMaxPssKb` | {'int': 6839} |
| `chromeRendererPssKb` | {'int': 6839} |
| `chromeRenderers` | {'int': 6839} |
| `chromeTabs` | {'int': 6839} |
| `chromeTabsProbedProfiles` | {'int': 6839} |
| `chromeUtilityPssKb` | {'int': 6839} |
| `desktopPssKb` | {'int': 6839} |
| `hostPssKb` | {'int': 6839} |
| `kind` | {'str': 6839} |
| `memAvailableKb` | {'int': 6839} |
| `memTotalKb` | {'int': 6839} |
| `otherPssKb` | {'int': 6839} |
| `processes` | {'int': 6839} |
| `pssFallbackProcesses` | {'int': 6839} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
