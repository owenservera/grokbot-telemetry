# sandbox_telemetry_parse — 2026-11-19 01:27:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1066575 lines=2366
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2357 |
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
| `chromeBrowserPssKb` | {'int': 2357} |
| `chromeGpuPssKb` | {'int': 2357} |
| `chromeOtherPssKb` | {'int': 2357} |
| `chromeProcesses` | {'int': 2357} |
| `chromeProfiles` | {'int': 2357} |
| `chromeRendererMaxPssKb` | {'int': 2357} |
| `chromeRendererPssKb` | {'int': 2357} |
| `chromeRenderers` | {'int': 2357} |
| `chromeTabs` | {'int': 2357} |
| `chromeTabsProbedProfiles` | {'int': 2357} |
| `chromeUtilityPssKb` | {'int': 2357} |
| `desktopPssKb` | {'int': 2357} |
| `hostPssKb` | {'int': 2357} |
| `kind` | {'str': 2357} |
| `memAvailableKb` | {'int': 2357} |
| `memTotalKb` | {'int': 2357} |
| `otherPssKb` | {'int': 2357} |
| `processes` | {'int': 2357} |
| `pssFallbackProcesses` | {'int': 2357} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
