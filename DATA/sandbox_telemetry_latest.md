# sandbox_telemetry_parse — 2026-11-24 05:40:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2152668 lines=4772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4757 |
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
| `chromeBrowserPssKb` | {'int': 4757} |
| `chromeGpuPssKb` | {'int': 4757} |
| `chromeOtherPssKb` | {'int': 4757} |
| `chromeProcesses` | {'int': 4757} |
| `chromeProfiles` | {'int': 4757} |
| `chromeRendererMaxPssKb` | {'int': 4757} |
| `chromeRendererPssKb` | {'int': 4757} |
| `chromeRenderers` | {'int': 4757} |
| `chromeTabs` | {'int': 4757} |
| `chromeTabsProbedProfiles` | {'int': 4757} |
| `chromeUtilityPssKb` | {'int': 4757} |
| `desktopPssKb` | {'int': 4757} |
| `hostPssKb` | {'int': 4757} |
| `kind` | {'str': 4757} |
| `memAvailableKb` | {'int': 4757} |
| `memTotalKb` | {'int': 4757} |
| `otherPssKb` | {'int': 4757} |
| `processes` | {'int': 4757} |
| `pssFallbackProcesses` | {'int': 4757} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
