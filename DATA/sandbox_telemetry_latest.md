# sandbox_telemetry_parse — 2026-11-20 18:21:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1832179 lines=4062
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4049 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4049} |
| `chromeGpuPssKb` | {'int': 4049} |
| `chromeOtherPssKb` | {'int': 4049} |
| `chromeProcesses` | {'int': 4049} |
| `chromeProfiles` | {'int': 4049} |
| `chromeRendererMaxPssKb` | {'int': 4049} |
| `chromeRendererPssKb` | {'int': 4049} |
| `chromeRenderers` | {'int': 4049} |
| `chromeTabs` | {'int': 4049} |
| `chromeTabsProbedProfiles` | {'int': 4049} |
| `chromeUtilityPssKb` | {'int': 4049} |
| `desktopPssKb` | {'int': 4049} |
| `hostPssKb` | {'int': 4049} |
| `kind` | {'str': 4049} |
| `memAvailableKb` | {'int': 4049} |
| `memTotalKb` | {'int': 4049} |
| `otherPssKb` | {'int': 4049} |
| `processes` | {'int': 4049} |
| `pssFallbackProcesses` | {'int': 4049} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
