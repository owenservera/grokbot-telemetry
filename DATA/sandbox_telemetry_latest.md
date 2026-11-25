# sandbox_telemetry_parse — 2026-11-25 13:57:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2782761 lines=6165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6150 |
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
| `chromeBrowserPssKb` | {'int': 6150} |
| `chromeGpuPssKb` | {'int': 6150} |
| `chromeOtherPssKb` | {'int': 6150} |
| `chromeProcesses` | {'int': 6150} |
| `chromeProfiles` | {'int': 6150} |
| `chromeRendererMaxPssKb` | {'int': 6150} |
| `chromeRendererPssKb` | {'int': 6150} |
| `chromeRenderers` | {'int': 6150} |
| `chromeTabs` | {'int': 6150} |
| `chromeTabsProbedProfiles` | {'int': 6150} |
| `chromeUtilityPssKb` | {'int': 6150} |
| `desktopPssKb` | {'int': 6150} |
| `hostPssKb` | {'int': 6150} |
| `kind` | {'str': 6150} |
| `memAvailableKb` | {'int': 6150} |
| `memTotalKb` | {'int': 6150} |
| `otherPssKb` | {'int': 6150} |
| `processes` | {'int': 6150} |
| `pssFallbackProcesses` | {'int': 6150} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
