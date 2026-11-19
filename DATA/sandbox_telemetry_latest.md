# sandbox_telemetry_parse — 2026-11-19 14:43:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1318017 lines=2922
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2913 |
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
| `chromeBrowserPssKb` | {'int': 2913} |
| `chromeGpuPssKb` | {'int': 2913} |
| `chromeOtherPssKb` | {'int': 2913} |
| `chromeProcesses` | {'int': 2913} |
| `chromeProfiles` | {'int': 2913} |
| `chromeRendererMaxPssKb` | {'int': 2913} |
| `chromeRendererPssKb` | {'int': 2913} |
| `chromeRenderers` | {'int': 2913} |
| `chromeTabs` | {'int': 2913} |
| `chromeTabsProbedProfiles` | {'int': 2913} |
| `chromeUtilityPssKb` | {'int': 2913} |
| `desktopPssKb` | {'int': 2913} |
| `hostPssKb` | {'int': 2913} |
| `kind` | {'str': 2913} |
| `memAvailableKb` | {'int': 2913} |
| `memTotalKb` | {'int': 2913} |
| `otherPssKb` | {'int': 2913} |
| `processes` | {'int': 2913} |
| `pssFallbackProcesses` | {'int': 2913} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
