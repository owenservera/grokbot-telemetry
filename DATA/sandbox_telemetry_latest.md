# sandbox_telemetry_parse — 2026-11-11 03:10:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1446288 lines=3204
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3195 |
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
| `chromeBrowserPssKb` | {'int': 3195} |
| `chromeGpuPssKb` | {'int': 3195} |
| `chromeOtherPssKb` | {'int': 3195} |
| `chromeProcesses` | {'int': 3195} |
| `chromeProfiles` | {'int': 3195} |
| `chromeRendererMaxPssKb` | {'int': 3195} |
| `chromeRendererPssKb` | {'int': 3195} |
| `chromeRenderers` | {'int': 3195} |
| `chromeTabs` | {'int': 3195} |
| `chromeTabsProbedProfiles` | {'int': 3195} |
| `chromeUtilityPssKb` | {'int': 3195} |
| `desktopPssKb` | {'int': 3195} |
| `hostPssKb` | {'int': 3195} |
| `kind` | {'str': 3195} |
| `memAvailableKb` | {'int': 3195} |
| `memTotalKb` | {'int': 3195} |
| `otherPssKb` | {'int': 3195} |
| `processes` | {'int': 3195} |
| `pssFallbackProcesses` | {'int': 3195} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
