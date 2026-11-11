# sandbox_telemetry_parse — 2026-11-11 11:07:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1599158 lines=3542
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3533 |
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
| `chromeBrowserPssKb` | {'int': 3533} |
| `chromeGpuPssKb` | {'int': 3533} |
| `chromeOtherPssKb` | {'int': 3533} |
| `chromeProcesses` | {'int': 3533} |
| `chromeProfiles` | {'int': 3533} |
| `chromeRendererMaxPssKb` | {'int': 3533} |
| `chromeRendererPssKb` | {'int': 3533} |
| `chromeRenderers` | {'int': 3533} |
| `chromeTabs` | {'int': 3533} |
| `chromeTabsProbedProfiles` | {'int': 3533} |
| `chromeUtilityPssKb` | {'int': 3533} |
| `desktopPssKb` | {'int': 3533} |
| `hostPssKb` | {'int': 3533} |
| `kind` | {'str': 3533} |
| `memAvailableKb` | {'int': 3533} |
| `memTotalKb` | {'int': 3533} |
| `otherPssKb` | {'int': 3533} |
| `processes` | {'int': 3533} |
| `pssFallbackProcesses` | {'int': 3533} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
