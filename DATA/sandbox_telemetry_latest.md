# sandbox_telemetry_parse — 2026-11-07 11:46:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=446691 lines=995
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 986 |
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
| `chromeBrowserPssKb` | {'int': 986} |
| `chromeGpuPssKb` | {'int': 986} |
| `chromeOtherPssKb` | {'int': 986} |
| `chromeProcesses` | {'int': 986} |
| `chromeProfiles` | {'int': 986} |
| `chromeRendererMaxPssKb` | {'int': 986} |
| `chromeRendererPssKb` | {'int': 986} |
| `chromeRenderers` | {'int': 986} |
| `chromeTabs` | {'int': 986} |
| `chromeTabsProbedProfiles` | {'int': 986} |
| `chromeUtilityPssKb` | {'int': 986} |
| `desktopPssKb` | {'int': 986} |
| `hostPssKb` | {'int': 986} |
| `kind` | {'str': 986} |
| `memAvailableKb` | {'int': 986} |
| `memTotalKb` | {'int': 986} |
| `otherPssKb` | {'int': 986} |
| `processes` | {'int': 986} |
| `pssFallbackProcesses` | {'int': 986} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
