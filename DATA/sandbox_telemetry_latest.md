# sandbox_telemetry_parse — 2026-11-26 08:37:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3166290 lines=7013
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6998 |
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
| `chromeBrowserPssKb` | {'int': 6998} |
| `chromeGpuPssKb` | {'int': 6998} |
| `chromeOtherPssKb` | {'int': 6998} |
| `chromeProcesses` | {'int': 6998} |
| `chromeProfiles` | {'int': 6998} |
| `chromeRendererMaxPssKb` | {'int': 6998} |
| `chromeRendererPssKb` | {'int': 6998} |
| `chromeRenderers` | {'int': 6998} |
| `chromeTabs` | {'int': 6998} |
| `chromeTabsProbedProfiles` | {'int': 6998} |
| `chromeUtilityPssKb` | {'int': 6998} |
| `desktopPssKb` | {'int': 6998} |
| `hostPssKb` | {'int': 6998} |
| `kind` | {'str': 6998} |
| `memAvailableKb` | {'int': 6998} |
| `memTotalKb` | {'int': 6998} |
| `otherPssKb` | {'int': 6998} |
| `processes` | {'int': 6998} |
| `pssFallbackProcesses` | {'int': 6998} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
