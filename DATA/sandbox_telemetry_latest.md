# sandbox_telemetry_parse — 2026-11-11 04:00:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1462566 lines=3240
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3231 |
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
| `chromeBrowserPssKb` | {'int': 3231} |
| `chromeGpuPssKb` | {'int': 3231} |
| `chromeOtherPssKb` | {'int': 3231} |
| `chromeProcesses` | {'int': 3231} |
| `chromeProfiles` | {'int': 3231} |
| `chromeRendererMaxPssKb` | {'int': 3231} |
| `chromeRendererPssKb` | {'int': 3231} |
| `chromeRenderers` | {'int': 3231} |
| `chromeTabs` | {'int': 3231} |
| `chromeTabsProbedProfiles` | {'int': 3231} |
| `chromeUtilityPssKb` | {'int': 3231} |
| `desktopPssKb` | {'int': 3231} |
| `hostPssKb` | {'int': 3231} |
| `kind` | {'str': 3231} |
| `memAvailableKb` | {'int': 3231} |
| `memTotalKb` | {'int': 3231} |
| `otherPssKb` | {'int': 3231} |
| `processes` | {'int': 3231} |
| `pssFallbackProcesses` | {'int': 3231} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
