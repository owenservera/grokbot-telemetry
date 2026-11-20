# sandbox_telemetry_parse — 2026-11-20 02:45:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1544842 lines=3425
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3414 |
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
| `chromeBrowserPssKb` | {'int': 3414} |
| `chromeGpuPssKb` | {'int': 3414} |
| `chromeOtherPssKb` | {'int': 3414} |
| `chromeProcesses` | {'int': 3414} |
| `chromeProfiles` | {'int': 3414} |
| `chromeRendererMaxPssKb` | {'int': 3414} |
| `chromeRendererPssKb` | {'int': 3414} |
| `chromeRenderers` | {'int': 3414} |
| `chromeTabs` | {'int': 3414} |
| `chromeTabsProbedProfiles` | {'int': 3414} |
| `chromeUtilityPssKb` | {'int': 3414} |
| `desktopPssKb` | {'int': 3414} |
| `hostPssKb` | {'int': 3414} |
| `kind` | {'str': 3414} |
| `memAvailableKb` | {'int': 3414} |
| `memTotalKb` | {'int': 3414} |
| `otherPssKb` | {'int': 3414} |
| `processes` | {'int': 3414} |
| `pssFallbackProcesses` | {'int': 3414} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
