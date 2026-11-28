# sandbox_telemetry_parse — 2026-11-28 05:27:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=750313 lines=1665
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1657 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1657} |
| `chromeGpuPssKb` | {'int': 1657} |
| `chromeOtherPssKb` | {'int': 1657} |
| `chromeProcesses` | {'int': 1657} |
| `chromeProfiles` | {'int': 1657} |
| `chromeRendererMaxPssKb` | {'int': 1657} |
| `chromeRendererPssKb` | {'int': 1657} |
| `chromeRenderers` | {'int': 1657} |
| `chromeTabs` | {'int': 1657} |
| `chromeTabsProbedProfiles` | {'int': 1657} |
| `chromeUtilityPssKb` | {'int': 1657} |
| `desktopPssKb` | {'int': 1657} |
| `hostPssKb` | {'int': 1657} |
| `kind` | {'str': 1657} |
| `memAvailableKb` | {'int': 1657} |
| `memTotalKb` | {'int': 1657} |
| `otherPssKb` | {'int': 1657} |
| `processes` | {'int': 1657} |
| `pssFallbackProcesses` | {'int': 1657} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
