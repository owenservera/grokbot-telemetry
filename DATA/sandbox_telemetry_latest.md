# sandbox_telemetry_parse — 2026-11-25 12:51:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2764667 lines=6125
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6110 |
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
| `chromeBrowserPssKb` | {'int': 6110} |
| `chromeGpuPssKb` | {'int': 6110} |
| `chromeOtherPssKb` | {'int': 6110} |
| `chromeProcesses` | {'int': 6110} |
| `chromeProfiles` | {'int': 6110} |
| `chromeRendererMaxPssKb` | {'int': 6110} |
| `chromeRendererPssKb` | {'int': 6110} |
| `chromeRenderers` | {'int': 6110} |
| `chromeTabs` | {'int': 6110} |
| `chromeTabsProbedProfiles` | {'int': 6110} |
| `chromeUtilityPssKb` | {'int': 6110} |
| `desktopPssKb` | {'int': 6110} |
| `hostPssKb` | {'int': 6110} |
| `kind` | {'str': 6110} |
| `memAvailableKb` | {'int': 6110} |
| `memTotalKb` | {'int': 6110} |
| `otherPssKb` | {'int': 6110} |
| `processes` | {'int': 6110} |
| `pssFallbackProcesses` | {'int': 6110} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
