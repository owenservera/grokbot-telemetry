# sandbox_telemetry_parse — 2026-11-20 01:53:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1529022 lines=3390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3379 |
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
| `chromeBrowserPssKb` | {'int': 3379} |
| `chromeGpuPssKb` | {'int': 3379} |
| `chromeOtherPssKb` | {'int': 3379} |
| `chromeProcesses` | {'int': 3379} |
| `chromeProfiles` | {'int': 3379} |
| `chromeRendererMaxPssKb` | {'int': 3379} |
| `chromeRendererPssKb` | {'int': 3379} |
| `chromeRenderers` | {'int': 3379} |
| `chromeTabs` | {'int': 3379} |
| `chromeTabsProbedProfiles` | {'int': 3379} |
| `chromeUtilityPssKb` | {'int': 3379} |
| `desktopPssKb` | {'int': 3379} |
| `hostPssKb` | {'int': 3379} |
| `kind` | {'str': 3379} |
| `memAvailableKb` | {'int': 3379} |
| `memTotalKb` | {'int': 3379} |
| `otherPssKb` | {'int': 3379} |
| `processes` | {'int': 3379} |
| `pssFallbackProcesses` | {'int': 3379} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
