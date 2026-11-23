# sandbox_telemetry_parse — 2026-11-23 19:49:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1965381 lines=4358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4343 |
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
| `chromeBrowserPssKb` | {'int': 4343} |
| `chromeGpuPssKb` | {'int': 4343} |
| `chromeOtherPssKb` | {'int': 4343} |
| `chromeProcesses` | {'int': 4343} |
| `chromeProfiles` | {'int': 4343} |
| `chromeRendererMaxPssKb` | {'int': 4343} |
| `chromeRendererPssKb` | {'int': 4343} |
| `chromeRenderers` | {'int': 4343} |
| `chromeTabs` | {'int': 4343} |
| `chromeTabsProbedProfiles` | {'int': 4343} |
| `chromeUtilityPssKb` | {'int': 4343} |
| `desktopPssKb` | {'int': 4343} |
| `hostPssKb` | {'int': 4343} |
| `kind` | {'str': 4343} |
| `memAvailableKb` | {'int': 4343} |
| `memTotalKb` | {'int': 4343} |
| `otherPssKb` | {'int': 4343} |
| `processes` | {'int': 4343} |
| `pssFallbackProcesses` | {'int': 4343} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
