# sandbox_telemetry_parse — 2026-11-27 11:03:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=380560 lines=848
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 840 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 840} |
| `chromeGpuPssKb` | {'int': 840} |
| `chromeOtherPssKb` | {'int': 840} |
| `chromeProcesses` | {'int': 840} |
| `chromeProfiles` | {'int': 840} |
| `chromeRendererMaxPssKb` | {'int': 840} |
| `chromeRendererPssKb` | {'int': 840} |
| `chromeRenderers` | {'int': 840} |
| `chromeTabs` | {'int': 840} |
| `chromeTabsProbedProfiles` | {'int': 840} |
| `chromeUtilityPssKb` | {'int': 840} |
| `desktopPssKb` | {'int': 840} |
| `hostPssKb` | {'int': 840} |
| `kind` | {'str': 840} |
| `memAvailableKb` | {'int': 840} |
| `memTotalKb` | {'int': 840} |
| `otherPssKb` | {'int': 840} |
| `processes` | {'int': 840} |
| `pssFallbackProcesses` | {'int': 840} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
