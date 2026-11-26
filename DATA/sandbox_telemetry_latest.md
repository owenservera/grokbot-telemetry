# sandbox_telemetry_parse — 2026-11-26 15:26:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3310617 lines=7332
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7317 |
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
| `chromeBrowserPssKb` | {'int': 7317} |
| `chromeGpuPssKb` | {'int': 7317} |
| `chromeOtherPssKb` | {'int': 7317} |
| `chromeProcesses` | {'int': 7317} |
| `chromeProfiles` | {'int': 7317} |
| `chromeRendererMaxPssKb` | {'int': 7317} |
| `chromeRendererPssKb` | {'int': 7317} |
| `chromeRenderers` | {'int': 7317} |
| `chromeTabs` | {'int': 7317} |
| `chromeTabsProbedProfiles` | {'int': 7317} |
| `chromeUtilityPssKb` | {'int': 7317} |
| `desktopPssKb` | {'int': 7317} |
| `hostPssKb` | {'int': 7317} |
| `kind` | {'str': 7317} |
| `memAvailableKb` | {'int': 7317} |
| `memTotalKb` | {'int': 7317} |
| `otherPssKb` | {'int': 7317} |
| `processes` | {'int': 7317} |
| `pssFallbackProcesses` | {'int': 7317} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
