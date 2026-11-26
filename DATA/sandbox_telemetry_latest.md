# sandbox_telemetry_parse — 2026-11-26 16:50:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3338384 lines=7395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7378 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7378} |
| `chromeGpuPssKb` | {'int': 7378} |
| `chromeOtherPssKb` | {'int': 7378} |
| `chromeProcesses` | {'int': 7378} |
| `chromeProfiles` | {'int': 7378} |
| `chromeRendererMaxPssKb` | {'int': 7378} |
| `chromeRendererPssKb` | {'int': 7378} |
| `chromeRenderers` | {'int': 7378} |
| `chromeTabs` | {'int': 7378} |
| `chromeTabsProbedProfiles` | {'int': 7378} |
| `chromeUtilityPssKb` | {'int': 7378} |
| `desktopPssKb` | {'int': 7378} |
| `hostPssKb` | {'int': 7378} |
| `kind` | {'str': 7378} |
| `memAvailableKb` | {'int': 7378} |
| `memTotalKb` | {'int': 7378} |
| `otherPssKb` | {'int': 7378} |
| `processes` | {'int': 7378} |
| `pssFallbackProcesses` | {'int': 7378} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
