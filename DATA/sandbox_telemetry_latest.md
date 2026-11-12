# sandbox_telemetry_parse — 2026-11-12 04:39:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1972114 lines=4366
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4357 |
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
| `chromeBrowserPssKb` | {'int': 4357} |
| `chromeGpuPssKb` | {'int': 4357} |
| `chromeOtherPssKb` | {'int': 4357} |
| `chromeProcesses` | {'int': 4357} |
| `chromeProfiles` | {'int': 4357} |
| `chromeRendererMaxPssKb` | {'int': 4357} |
| `chromeRendererPssKb` | {'int': 4357} |
| `chromeRenderers` | {'int': 4357} |
| `chromeTabs` | {'int': 4357} |
| `chromeTabsProbedProfiles` | {'int': 4357} |
| `chromeUtilityPssKb` | {'int': 4357} |
| `desktopPssKb` | {'int': 4357} |
| `hostPssKb` | {'int': 4357} |
| `kind` | {'str': 4357} |
| `memAvailableKb` | {'int': 4357} |
| `memTotalKb` | {'int': 4357} |
| `otherPssKb` | {'int': 4357} |
| `processes` | {'int': 4357} |
| `pssFallbackProcesses` | {'int': 4357} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
