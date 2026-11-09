# sandbox_telemetry_parse — 2026-11-09 14:10:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=691878 lines=1537
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1528 |
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
| `chromeBrowserPssKb` | {'int': 1528} |
| `chromeGpuPssKb` | {'int': 1528} |
| `chromeOtherPssKb` | {'int': 1528} |
| `chromeProcesses` | {'int': 1528} |
| `chromeProfiles` | {'int': 1528} |
| `chromeRendererMaxPssKb` | {'int': 1528} |
| `chromeRendererPssKb` | {'int': 1528} |
| `chromeRenderers` | {'int': 1528} |
| `chromeTabs` | {'int': 1528} |
| `chromeTabsProbedProfiles` | {'int': 1528} |
| `chromeUtilityPssKb` | {'int': 1528} |
| `desktopPssKb` | {'int': 1528} |
| `hostPssKb` | {'int': 1528} |
| `kind` | {'str': 1528} |
| `memAvailableKb` | {'int': 1528} |
| `memTotalKb` | {'int': 1528} |
| `otherPssKb` | {'int': 1528} |
| `processes` | {'int': 1528} |
| `pssFallbackProcesses` | {'int': 1528} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
