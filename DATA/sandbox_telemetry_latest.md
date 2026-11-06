# sandbox_telemetry_parse — 2026-11-06 19:58:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=142766 lines=323
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 314 |
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
| `chromeBrowserPssKb` | {'int': 314} |
| `chromeGpuPssKb` | {'int': 314} |
| `chromeOtherPssKb` | {'int': 314} |
| `chromeProcesses` | {'int': 314} |
| `chromeProfiles` | {'int': 314} |
| `chromeRendererMaxPssKb` | {'int': 314} |
| `chromeRendererPssKb` | {'int': 314} |
| `chromeRenderers` | {'int': 314} |
| `chromeTabs` | {'int': 314} |
| `chromeTabsProbedProfiles` | {'int': 314} |
| `chromeUtilityPssKb` | {'int': 314} |
| `desktopPssKb` | {'int': 314} |
| `hostPssKb` | {'int': 314} |
| `kind` | {'str': 314} |
| `memAvailableKb` | {'int': 314} |
| `memTotalKb` | {'int': 314} |
| `otherPssKb` | {'int': 314} |
| `processes` | {'int': 314} |
| `pssFallbackProcesses` | {'int': 314} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
