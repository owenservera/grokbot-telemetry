# sandbox_telemetry_parse — 2026-11-07 03:17:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=287506 lines=643
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 634 |
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
| `chromeBrowserPssKb` | {'int': 634} |
| `chromeGpuPssKb` | {'int': 634} |
| `chromeOtherPssKb` | {'int': 634} |
| `chromeProcesses` | {'int': 634} |
| `chromeProfiles` | {'int': 634} |
| `chromeRendererMaxPssKb` | {'int': 634} |
| `chromeRendererPssKb` | {'int': 634} |
| `chromeRenderers` | {'int': 634} |
| `chromeTabs` | {'int': 634} |
| `chromeTabsProbedProfiles` | {'int': 634} |
| `chromeUtilityPssKb` | {'int': 634} |
| `desktopPssKb` | {'int': 634} |
| `hostPssKb` | {'int': 634} |
| `kind` | {'str': 634} |
| `memAvailableKb` | {'int': 634} |
| `memTotalKb` | {'int': 634} |
| `otherPssKb` | {'int': 634} |
| `processes` | {'int': 634} |
| `pssFallbackProcesses` | {'int': 634} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
