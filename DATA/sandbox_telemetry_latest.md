# sandbox_telemetry_parse — 2026-11-25 20:10:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2905297 lines=6436
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6421 |
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
| `chromeBrowserPssKb` | {'int': 6421} |
| `chromeGpuPssKb` | {'int': 6421} |
| `chromeOtherPssKb` | {'int': 6421} |
| `chromeProcesses` | {'int': 6421} |
| `chromeProfiles` | {'int': 6421} |
| `chromeRendererMaxPssKb` | {'int': 6421} |
| `chromeRendererPssKb` | {'int': 6421} |
| `chromeRenderers` | {'int': 6421} |
| `chromeTabs` | {'int': 6421} |
| `chromeTabsProbedProfiles` | {'int': 6421} |
| `chromeUtilityPssKb` | {'int': 6421} |
| `desktopPssKb` | {'int': 6421} |
| `hostPssKb` | {'int': 6421} |
| `kind` | {'str': 6421} |
| `memAvailableKb` | {'int': 6421} |
| `memTotalKb` | {'int': 6421} |
| `otherPssKb` | {'int': 6421} |
| `processes` | {'int': 6421} |
| `pssFallbackProcesses` | {'int': 6421} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
