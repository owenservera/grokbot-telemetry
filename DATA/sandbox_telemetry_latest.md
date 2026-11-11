# sandbox_telemetry_parse — 2026-11-11 18:10:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1754384 lines=3885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3876 |
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
| `chromeBrowserPssKb` | {'int': 3876} |
| `chromeGpuPssKb` | {'int': 3876} |
| `chromeOtherPssKb` | {'int': 3876} |
| `chromeProcesses` | {'int': 3876} |
| `chromeProfiles` | {'int': 3876} |
| `chromeRendererMaxPssKb` | {'int': 3876} |
| `chromeRendererPssKb` | {'int': 3876} |
| `chromeRenderers` | {'int': 3876} |
| `chromeTabs` | {'int': 3876} |
| `chromeTabsProbedProfiles` | {'int': 3876} |
| `chromeUtilityPssKb` | {'int': 3876} |
| `desktopPssKb` | {'int': 3876} |
| `hostPssKb` | {'int': 3876} |
| `kind` | {'str': 3876} |
| `memAvailableKb` | {'int': 3876} |
| `memTotalKb` | {'int': 3876} |
| `otherPssKb` | {'int': 3876} |
| `processes` | {'int': 3876} |
| `pssFallbackProcesses` | {'int': 3876} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
