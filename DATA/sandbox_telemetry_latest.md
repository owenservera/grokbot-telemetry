# sandbox_telemetry_parse — 2026-11-19 09:36:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1209909 lines=2683
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2674 |
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
| `chromeBrowserPssKb` | {'int': 2674} |
| `chromeGpuPssKb` | {'int': 2674} |
| `chromeOtherPssKb` | {'int': 2674} |
| `chromeProcesses` | {'int': 2674} |
| `chromeProfiles` | {'int': 2674} |
| `chromeRendererMaxPssKb` | {'int': 2674} |
| `chromeRendererPssKb` | {'int': 2674} |
| `chromeRenderers` | {'int': 2674} |
| `chromeTabs` | {'int': 2674} |
| `chromeTabsProbedProfiles` | {'int': 2674} |
| `chromeUtilityPssKb` | {'int': 2674} |
| `desktopPssKb` | {'int': 2674} |
| `hostPssKb` | {'int': 2674} |
| `kind` | {'str': 2674} |
| `memAvailableKb` | {'int': 2674} |
| `memTotalKb` | {'int': 2674} |
| `otherPssKb` | {'int': 2674} |
| `processes` | {'int': 2674} |
| `pssFallbackProcesses` | {'int': 2674} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
