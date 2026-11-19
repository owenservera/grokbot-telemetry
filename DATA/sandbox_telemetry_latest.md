# sandbox_telemetry_parse — 2026-11-20 00:55:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1515462 lines=3360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3349 |
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
| `chromeBrowserPssKb` | {'int': 3349} |
| `chromeGpuPssKb` | {'int': 3349} |
| `chromeOtherPssKb` | {'int': 3349} |
| `chromeProcesses` | {'int': 3349} |
| `chromeProfiles` | {'int': 3349} |
| `chromeRendererMaxPssKb` | {'int': 3349} |
| `chromeRendererPssKb` | {'int': 3349} |
| `chromeRenderers` | {'int': 3349} |
| `chromeTabs` | {'int': 3349} |
| `chromeTabsProbedProfiles` | {'int': 3349} |
| `chromeUtilityPssKb` | {'int': 3349} |
| `desktopPssKb` | {'int': 3349} |
| `hostPssKb` | {'int': 3349} |
| `kind` | {'str': 3349} |
| `memAvailableKb` | {'int': 3349} |
| `memTotalKb` | {'int': 3349} |
| `otherPssKb` | {'int': 3349} |
| `processes` | {'int': 3349} |
| `pssFallbackProcesses` | {'int': 3349} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
