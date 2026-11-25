# sandbox_telemetry_parse — 2026-11-25 16:55:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2840640 lines=6293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6278 |
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
| `chromeBrowserPssKb` | {'int': 6278} |
| `chromeGpuPssKb` | {'int': 6278} |
| `chromeOtherPssKb` | {'int': 6278} |
| `chromeProcesses` | {'int': 6278} |
| `chromeProfiles` | {'int': 6278} |
| `chromeRendererMaxPssKb` | {'int': 6278} |
| `chromeRendererPssKb` | {'int': 6278} |
| `chromeRenderers` | {'int': 6278} |
| `chromeTabs` | {'int': 6278} |
| `chromeTabsProbedProfiles` | {'int': 6278} |
| `chromeUtilityPssKb` | {'int': 6278} |
| `desktopPssKb` | {'int': 6278} |
| `hostPssKb` | {'int': 6278} |
| `kind` | {'str': 6278} |
| `memAvailableKb` | {'int': 6278} |
| `memTotalKb` | {'int': 6278} |
| `otherPssKb` | {'int': 6278} |
| `processes` | {'int': 6278} |
| `pssFallbackProcesses` | {'int': 6278} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
