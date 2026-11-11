# sandbox_telemetry_parse — 2026-11-11 05:36:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1491504 lines=3304
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3295 |
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
| `chromeBrowserPssKb` | {'int': 3295} |
| `chromeGpuPssKb` | {'int': 3295} |
| `chromeOtherPssKb` | {'int': 3295} |
| `chromeProcesses` | {'int': 3295} |
| `chromeProfiles` | {'int': 3295} |
| `chromeRendererMaxPssKb` | {'int': 3295} |
| `chromeRendererPssKb` | {'int': 3295} |
| `chromeRenderers` | {'int': 3295} |
| `chromeTabs` | {'int': 3295} |
| `chromeTabsProbedProfiles` | {'int': 3295} |
| `chromeUtilityPssKb` | {'int': 3295} |
| `desktopPssKb` | {'int': 3295} |
| `hostPssKb` | {'int': 3295} |
| `kind` | {'str': 3295} |
| `memAvailableKb` | {'int': 3295} |
| `memTotalKb` | {'int': 3295} |
| `otherPssKb` | {'int': 3295} |
| `processes` | {'int': 3295} |
| `pssFallbackProcesses` | {'int': 3295} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
