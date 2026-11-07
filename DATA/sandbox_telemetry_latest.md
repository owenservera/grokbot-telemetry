# sandbox_telemetry_parse — 2026-11-07 05:04:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=320962 lines=717
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 708 |
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
| `chromeBrowserPssKb` | {'int': 708} |
| `chromeGpuPssKb` | {'int': 708} |
| `chromeOtherPssKb` | {'int': 708} |
| `chromeProcesses` | {'int': 708} |
| `chromeProfiles` | {'int': 708} |
| `chromeRendererMaxPssKb` | {'int': 708} |
| `chromeRendererPssKb` | {'int': 708} |
| `chromeRenderers` | {'int': 708} |
| `chromeTabs` | {'int': 708} |
| `chromeTabsProbedProfiles` | {'int': 708} |
| `chromeUtilityPssKb` | {'int': 708} |
| `desktopPssKb` | {'int': 708} |
| `hostPssKb` | {'int': 708} |
| `kind` | {'str': 708} |
| `memAvailableKb` | {'int': 708} |
| `memTotalKb` | {'int': 708} |
| `otherPssKb` | {'int': 708} |
| `processes` | {'int': 708} |
| `pssFallbackProcesses` | {'int': 708} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
