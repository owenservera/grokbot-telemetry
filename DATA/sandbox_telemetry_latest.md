# sandbox_telemetry_parse — 2026-11-20 04:12:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1568798 lines=3478
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3467 |
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
| `chromeBrowserPssKb` | {'int': 3467} |
| `chromeGpuPssKb` | {'int': 3467} |
| `chromeOtherPssKb` | {'int': 3467} |
| `chromeProcesses` | {'int': 3467} |
| `chromeProfiles` | {'int': 3467} |
| `chromeRendererMaxPssKb` | {'int': 3467} |
| `chromeRendererPssKb` | {'int': 3467} |
| `chromeRenderers` | {'int': 3467} |
| `chromeTabs` | {'int': 3467} |
| `chromeTabsProbedProfiles` | {'int': 3467} |
| `chromeUtilityPssKb` | {'int': 3467} |
| `desktopPssKb` | {'int': 3467} |
| `hostPssKb` | {'int': 3467} |
| `kind` | {'str': 3467} |
| `memAvailableKb` | {'int': 3467} |
| `memTotalKb` | {'int': 3467} |
| `otherPssKb` | {'int': 3467} |
| `processes` | {'int': 3467} |
| `pssFallbackProcesses` | {'int': 3467} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
