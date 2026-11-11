# sandbox_telemetry_parse — 2026-11-11 13:40:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1655274 lines=3666
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3657 |
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
| `chromeBrowserPssKb` | {'int': 3657} |
| `chromeGpuPssKb` | {'int': 3657} |
| `chromeOtherPssKb` | {'int': 3657} |
| `chromeProcesses` | {'int': 3657} |
| `chromeProfiles` | {'int': 3657} |
| `chromeRendererMaxPssKb` | {'int': 3657} |
| `chromeRendererPssKb` | {'int': 3657} |
| `chromeRenderers` | {'int': 3657} |
| `chromeTabs` | {'int': 3657} |
| `chromeTabsProbedProfiles` | {'int': 3657} |
| `chromeUtilityPssKb` | {'int': 3657} |
| `desktopPssKb` | {'int': 3657} |
| `hostPssKb` | {'int': 3657} |
| `kind` | {'str': 3657} |
| `memAvailableKb` | {'int': 3657} |
| `memTotalKb` | {'int': 3657} |
| `otherPssKb` | {'int': 3657} |
| `processes` | {'int': 3657} |
| `pssFallbackProcesses` | {'int': 3657} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
