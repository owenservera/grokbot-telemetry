# sandbox_telemetry_parse — 2026-11-26 05:18:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3091651 lines=6848
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6833 |
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
| `chromeBrowserPssKb` | {'int': 6833} |
| `chromeGpuPssKb` | {'int': 6833} |
| `chromeOtherPssKb` | {'int': 6833} |
| `chromeProcesses` | {'int': 6833} |
| `chromeProfiles` | {'int': 6833} |
| `chromeRendererMaxPssKb` | {'int': 6833} |
| `chromeRendererPssKb` | {'int': 6833} |
| `chromeRenderers` | {'int': 6833} |
| `chromeTabs` | {'int': 6833} |
| `chromeTabsProbedProfiles` | {'int': 6833} |
| `chromeUtilityPssKb` | {'int': 6833} |
| `desktopPssKb` | {'int': 6833} |
| `hostPssKb` | {'int': 6833} |
| `kind` | {'str': 6833} |
| `memAvailableKb` | {'int': 6833} |
| `memTotalKb` | {'int': 6833} |
| `otherPssKb` | {'int': 6833} |
| `processes` | {'int': 6833} |
| `pssFallbackProcesses` | {'int': 6833} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
