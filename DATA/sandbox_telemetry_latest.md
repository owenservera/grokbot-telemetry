# sandbox_telemetry_parse — 2026-11-19 23:55:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1496925 lines=3319
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3308 |
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
| `chromeBrowserPssKb` | {'int': 3308} |
| `chromeGpuPssKb` | {'int': 3308} |
| `chromeOtherPssKb` | {'int': 3308} |
| `chromeProcesses` | {'int': 3308} |
| `chromeProfiles` | {'int': 3308} |
| `chromeRendererMaxPssKb` | {'int': 3308} |
| `chromeRendererPssKb` | {'int': 3308} |
| `chromeRenderers` | {'int': 3308} |
| `chromeTabs` | {'int': 3308} |
| `chromeTabsProbedProfiles` | {'int': 3308} |
| `chromeUtilityPssKb` | {'int': 3308} |
| `desktopPssKb` | {'int': 3308} |
| `hostPssKb` | {'int': 3308} |
| `kind` | {'str': 3308} |
| `memAvailableKb` | {'int': 3308} |
| `memTotalKb` | {'int': 3308} |
| `otherPssKb` | {'int': 3308} |
| `processes` | {'int': 3308} |
| `pssFallbackProcesses` | {'int': 3308} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
