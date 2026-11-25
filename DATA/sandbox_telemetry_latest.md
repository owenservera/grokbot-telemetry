# sandbox_telemetry_parse — 2026-11-25 10:06:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2708612 lines=6001
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5986 |
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
| `chromeBrowserPssKb` | {'int': 5986} |
| `chromeGpuPssKb` | {'int': 5986} |
| `chromeOtherPssKb` | {'int': 5986} |
| `chromeProcesses` | {'int': 5986} |
| `chromeProfiles` | {'int': 5986} |
| `chromeRendererMaxPssKb` | {'int': 5986} |
| `chromeRendererPssKb` | {'int': 5986} |
| `chromeRenderers` | {'int': 5986} |
| `chromeTabs` | {'int': 5986} |
| `chromeTabsProbedProfiles` | {'int': 5986} |
| `chromeUtilityPssKb` | {'int': 5986} |
| `desktopPssKb` | {'int': 5986} |
| `hostPssKb` | {'int': 5986} |
| `kind` | {'str': 5986} |
| `memAvailableKb` | {'int': 5986} |
| `memTotalKb` | {'int': 5986} |
| `otherPssKb` | {'int': 5986} |
| `processes` | {'int': 5986} |
| `pssFallbackProcesses` | {'int': 5986} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
