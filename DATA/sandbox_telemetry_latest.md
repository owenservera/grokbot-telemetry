# sandbox_telemetry_parse — 2026-11-27 15:07:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=471503 lines=1049
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1041 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1041} |
| `chromeGpuPssKb` | {'int': 1041} |
| `chromeOtherPssKb` | {'int': 1041} |
| `chromeProcesses` | {'int': 1041} |
| `chromeProfiles` | {'int': 1041} |
| `chromeRendererMaxPssKb` | {'int': 1041} |
| `chromeRendererPssKb` | {'int': 1041} |
| `chromeRenderers` | {'int': 1041} |
| `chromeTabs` | {'int': 1041} |
| `chromeTabsProbedProfiles` | {'int': 1041} |
| `chromeUtilityPssKb` | {'int': 1041} |
| `desktopPssKb` | {'int': 1041} |
| `hostPssKb` | {'int': 1041} |
| `kind` | {'str': 1041} |
| `memAvailableKb` | {'int': 1041} |
| `memTotalKb` | {'int': 1041} |
| `otherPssKb` | {'int': 1041} |
| `processes` | {'int': 1041} |
| `pssFallbackProcesses` | {'int': 1041} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
