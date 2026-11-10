# sandbox_telemetry_parse — 2026-11-10 14:20:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1177916 lines=2611
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2602 |
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
| `chromeBrowserPssKb` | {'int': 2602} |
| `chromeGpuPssKb` | {'int': 2602} |
| `chromeOtherPssKb` | {'int': 2602} |
| `chromeProcesses` | {'int': 2602} |
| `chromeProfiles` | {'int': 2602} |
| `chromeRendererMaxPssKb` | {'int': 2602} |
| `chromeRendererPssKb` | {'int': 2602} |
| `chromeRenderers` | {'int': 2602} |
| `chromeTabs` | {'int': 2602} |
| `chromeTabsProbedProfiles` | {'int': 2602} |
| `chromeUtilityPssKb` | {'int': 2602} |
| `desktopPssKb` | {'int': 2602} |
| `hostPssKb` | {'int': 2602} |
| `kind` | {'str': 2602} |
| `memAvailableKb` | {'int': 2602} |
| `memTotalKb` | {'int': 2602} |
| `otherPssKb` | {'int': 2602} |
| `processes` | {'int': 2602} |
| `pssFallbackProcesses` | {'int': 2602} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
