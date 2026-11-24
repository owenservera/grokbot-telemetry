# sandbox_telemetry_parse — 2026-11-24 11:01:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2256211 lines=5001
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4986 |
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
| `chromeBrowserPssKb` | {'int': 4986} |
| `chromeGpuPssKb` | {'int': 4986} |
| `chromeOtherPssKb` | {'int': 4986} |
| `chromeProcesses` | {'int': 4986} |
| `chromeProfiles` | {'int': 4986} |
| `chromeRendererMaxPssKb` | {'int': 4986} |
| `chromeRendererPssKb` | {'int': 4986} |
| `chromeRenderers` | {'int': 4986} |
| `chromeTabs` | {'int': 4986} |
| `chromeTabsProbedProfiles` | {'int': 4986} |
| `chromeUtilityPssKb` | {'int': 4986} |
| `desktopPssKb` | {'int': 4986} |
| `hostPssKb` | {'int': 4986} |
| `kind` | {'str': 4986} |
| `memAvailableKb` | {'int': 4986} |
| `memTotalKb` | {'int': 4986} |
| `otherPssKb` | {'int': 4986} |
| `processes` | {'int': 4986} |
| `pssFallbackProcesses` | {'int': 4986} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
