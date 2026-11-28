# sandbox_telemetry_parse — 2026-11-28 06:27:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=768405 lines=1705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1697 |
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
| `chromeBrowserPssKb` | {'int': 1697} |
| `chromeGpuPssKb` | {'int': 1697} |
| `chromeOtherPssKb` | {'int': 1697} |
| `chromeProcesses` | {'int': 1697} |
| `chromeProfiles` | {'int': 1697} |
| `chromeRendererMaxPssKb` | {'int': 1697} |
| `chromeRendererPssKb` | {'int': 1697} |
| `chromeRenderers` | {'int': 1697} |
| `chromeTabs` | {'int': 1697} |
| `chromeTabsProbedProfiles` | {'int': 1697} |
| `chromeUtilityPssKb` | {'int': 1697} |
| `desktopPssKb` | {'int': 1697} |
| `hostPssKb` | {'int': 1697} |
| `kind` | {'str': 1697} |
| `memAvailableKb` | {'int': 1697} |
| `memTotalKb` | {'int': 1697} |
| `otherPssKb` | {'int': 1697} |
| `processes` | {'int': 1697} |
| `pssFallbackProcesses` | {'int': 1697} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
