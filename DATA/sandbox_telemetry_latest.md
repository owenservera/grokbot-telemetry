# sandbox_telemetry_parse — 2026-11-26 16:05:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3321630 lines=7358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7341 |
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
| `chromeBrowserPssKb` | {'int': 7341} |
| `chromeGpuPssKb` | {'int': 7341} |
| `chromeOtherPssKb` | {'int': 7341} |
| `chromeProcesses` | {'int': 7341} |
| `chromeProfiles` | {'int': 7341} |
| `chromeRendererMaxPssKb` | {'int': 7341} |
| `chromeRendererPssKb` | {'int': 7341} |
| `chromeRenderers` | {'int': 7341} |
| `chromeTabs` | {'int': 7341} |
| `chromeTabsProbedProfiles` | {'int': 7341} |
| `chromeUtilityPssKb` | {'int': 7341} |
| `desktopPssKb` | {'int': 7341} |
| `hostPssKb` | {'int': 7341} |
| `kind` | {'str': 7341} |
| `memAvailableKb` | {'int': 7341} |
| `memTotalKb` | {'int': 7341} |
| `otherPssKb` | {'int': 7341} |
| `processes` | {'int': 7341} |
| `pssFallbackProcesses` | {'int': 7341} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
