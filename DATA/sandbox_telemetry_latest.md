# sandbox_telemetry_parse — 2026-11-24 23:49:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2503748 lines=5548
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5533 |
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
| `chromeBrowserPssKb` | {'int': 5533} |
| `chromeGpuPssKb` | {'int': 5533} |
| `chromeOtherPssKb` | {'int': 5533} |
| `chromeProcesses` | {'int': 5533} |
| `chromeProfiles` | {'int': 5533} |
| `chromeRendererMaxPssKb` | {'int': 5533} |
| `chromeRendererPssKb` | {'int': 5533} |
| `chromeRenderers` | {'int': 5533} |
| `chromeTabs` | {'int': 5533} |
| `chromeTabsProbedProfiles` | {'int': 5533} |
| `chromeUtilityPssKb` | {'int': 5533} |
| `desktopPssKb` | {'int': 5533} |
| `hostPssKb` | {'int': 5533} |
| `kind` | {'str': 5533} |
| `memAvailableKb` | {'int': 5533} |
| `memTotalKb` | {'int': 5533} |
| `otherPssKb` | {'int': 5533} |
| `processes` | {'int': 5533} |
| `pssFallbackProcesses` | {'int': 5533} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
