# sandbox_telemetry_parse — 2026-11-20 20:00:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1862483 lines=4129
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4116 |
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
| `chromeBrowserPssKb` | {'int': 4116} |
| `chromeGpuPssKb` | {'int': 4116} |
| `chromeOtherPssKb` | {'int': 4116} |
| `chromeProcesses` | {'int': 4116} |
| `chromeProfiles` | {'int': 4116} |
| `chromeRendererMaxPssKb` | {'int': 4116} |
| `chromeRendererPssKb` | {'int': 4116} |
| `chromeRenderers` | {'int': 4116} |
| `chromeTabs` | {'int': 4116} |
| `chromeTabsProbedProfiles` | {'int': 4116} |
| `chromeUtilityPssKb` | {'int': 4116} |
| `desktopPssKb` | {'int': 4116} |
| `hostPssKb` | {'int': 4116} |
| `kind` | {'str': 4116} |
| `memAvailableKb` | {'int': 4116} |
| `memTotalKb` | {'int': 4116} |
| `otherPssKb` | {'int': 4116} |
| `processes` | {'int': 4116} |
| `pssFallbackProcesses` | {'int': 4116} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
