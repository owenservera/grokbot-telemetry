# sandbox_telemetry_parse — 2026-11-27 06:30:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=282870 lines=632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 624 |
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
| `chromeBrowserPssKb` | {'int': 624} |
| `chromeGpuPssKb` | {'int': 624} |
| `chromeOtherPssKb` | {'int': 624} |
| `chromeProcesses` | {'int': 624} |
| `chromeProfiles` | {'int': 624} |
| `chromeRendererMaxPssKb` | {'int': 624} |
| `chromeRendererPssKb` | {'int': 624} |
| `chromeRenderers` | {'int': 624} |
| `chromeTabs` | {'int': 624} |
| `chromeTabsProbedProfiles` | {'int': 624} |
| `chromeUtilityPssKb` | {'int': 624} |
| `desktopPssKb` | {'int': 624} |
| `hostPssKb` | {'int': 624} |
| `kind` | {'str': 624} |
| `memAvailableKb` | {'int': 624} |
| `memTotalKb` | {'int': 624} |
| `otherPssKb` | {'int': 624} |
| `processes` | {'int': 624} |
| `pssFallbackProcesses` | {'int': 624} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
