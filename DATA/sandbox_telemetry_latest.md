# sandbox_telemetry_parse — 2026-11-19 21:18:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1444471 lines=3203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3192 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3192} |
| `chromeGpuPssKb` | {'int': 3192} |
| `chromeOtherPssKb` | {'int': 3192} |
| `chromeProcesses` | {'int': 3192} |
| `chromeProfiles` | {'int': 3192} |
| `chromeRendererMaxPssKb` | {'int': 3192} |
| `chromeRendererPssKb` | {'int': 3192} |
| `chromeRenderers` | {'int': 3192} |
| `chromeTabs` | {'int': 3192} |
| `chromeTabsProbedProfiles` | {'int': 3192} |
| `chromeUtilityPssKb` | {'int': 3192} |
| `desktopPssKb` | {'int': 3192} |
| `hostPssKb` | {'int': 3192} |
| `kind` | {'str': 3192} |
| `memAvailableKb` | {'int': 3192} |
| `memTotalKb` | {'int': 3192} |
| `otherPssKb` | {'int': 3192} |
| `processes` | {'int': 3192} |
| `pssFallbackProcesses` | {'int': 3192} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
