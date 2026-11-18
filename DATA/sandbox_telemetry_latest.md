# sandbox_telemetry_parse — 2026-11-18 04:49:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=684692 lines=1520
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1513 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1513} |
| `chromeGpuPssKb` | {'int': 1513} |
| `chromeOtherPssKb` | {'int': 1513} |
| `chromeProcesses` | {'int': 1513} |
| `chromeProfiles` | {'int': 1513} |
| `chromeRendererMaxPssKb` | {'int': 1513} |
| `chromeRendererPssKb` | {'int': 1513} |
| `chromeRenderers` | {'int': 1513} |
| `chromeTabs` | {'int': 1513} |
| `chromeTabsProbedProfiles` | {'int': 1513} |
| `chromeUtilityPssKb` | {'int': 1513} |
| `desktopPssKb` | {'int': 1513} |
| `hostPssKb` | {'int': 1513} |
| `kind` | {'str': 1513} |
| `memAvailableKb` | {'int': 1513} |
| `memTotalKb` | {'int': 1513} |
| `otherPssKb` | {'int': 1513} |
| `processes` | {'int': 1513} |
| `pssFallbackProcesses` | {'int': 1513} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
