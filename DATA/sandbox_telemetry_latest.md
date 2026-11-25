# sandbox_telemetry_parse — 2026-11-25 08:24:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2670597 lines=5917
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5902 |
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
| `chromeBrowserPssKb` | {'int': 5902} |
| `chromeGpuPssKb` | {'int': 5902} |
| `chromeOtherPssKb` | {'int': 5902} |
| `chromeProcesses` | {'int': 5902} |
| `chromeProfiles` | {'int': 5902} |
| `chromeRendererMaxPssKb` | {'int': 5902} |
| `chromeRendererPssKb` | {'int': 5902} |
| `chromeRenderers` | {'int': 5902} |
| `chromeTabs` | {'int': 5902} |
| `chromeTabsProbedProfiles` | {'int': 5902} |
| `chromeUtilityPssKb` | {'int': 5902} |
| `desktopPssKb` | {'int': 5902} |
| `hostPssKb` | {'int': 5902} |
| `kind` | {'str': 5902} |
| `memAvailableKb` | {'int': 5902} |
| `memTotalKb` | {'int': 5902} |
| `otherPssKb` | {'int': 5902} |
| `processes` | {'int': 5902} |
| `pssFallbackProcesses` | {'int': 5902} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
