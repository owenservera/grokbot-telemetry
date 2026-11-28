# sandbox_telemetry_parse — 2026-11-28 04:01:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=725438 lines=1610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1602 |
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
| `chromeBrowserPssKb` | {'int': 1602} |
| `chromeGpuPssKb` | {'int': 1602} |
| `chromeOtherPssKb` | {'int': 1602} |
| `chromeProcesses` | {'int': 1602} |
| `chromeProfiles` | {'int': 1602} |
| `chromeRendererMaxPssKb` | {'int': 1602} |
| `chromeRendererPssKb` | {'int': 1602} |
| `chromeRenderers` | {'int': 1602} |
| `chromeTabs` | {'int': 1602} |
| `chromeTabsProbedProfiles` | {'int': 1602} |
| `chromeUtilityPssKb` | {'int': 1602} |
| `desktopPssKb` | {'int': 1602} |
| `hostPssKb` | {'int': 1602} |
| `kind` | {'str': 1602} |
| `memAvailableKb` | {'int': 1602} |
| `memTotalKb` | {'int': 1602} |
| `otherPssKb` | {'int': 1602} |
| `processes` | {'int': 1602} |
| `pssFallbackProcesses` | {'int': 1602} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
