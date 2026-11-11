# sandbox_telemetry_parse — 2026-11-11 05:47:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1494668 lines=3311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3302 |
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
| `chromeBrowserPssKb` | {'int': 3302} |
| `chromeGpuPssKb` | {'int': 3302} |
| `chromeOtherPssKb` | {'int': 3302} |
| `chromeProcesses` | {'int': 3302} |
| `chromeProfiles` | {'int': 3302} |
| `chromeRendererMaxPssKb` | {'int': 3302} |
| `chromeRendererPssKb` | {'int': 3302} |
| `chromeRenderers` | {'int': 3302} |
| `chromeTabs` | {'int': 3302} |
| `chromeTabsProbedProfiles` | {'int': 3302} |
| `chromeUtilityPssKb` | {'int': 3302} |
| `desktopPssKb` | {'int': 3302} |
| `hostPssKb` | {'int': 3302} |
| `kind` | {'str': 3302} |
| `memAvailableKb` | {'int': 3302} |
| `memTotalKb` | {'int': 3302} |
| `otherPssKb` | {'int': 3302} |
| `processes` | {'int': 3302} |
| `pssFallbackProcesses` | {'int': 3302} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
