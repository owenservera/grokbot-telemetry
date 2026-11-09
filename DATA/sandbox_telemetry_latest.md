# sandbox_telemetry_parse — 2026-11-09 14:58:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=707723 lines=1572
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1563 |
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
| `chromeBrowserPssKb` | {'int': 1563} |
| `chromeGpuPssKb` | {'int': 1563} |
| `chromeOtherPssKb` | {'int': 1563} |
| `chromeProcesses` | {'int': 1563} |
| `chromeProfiles` | {'int': 1563} |
| `chromeRendererMaxPssKb` | {'int': 1563} |
| `chromeRendererPssKb` | {'int': 1563} |
| `chromeRenderers` | {'int': 1563} |
| `chromeTabs` | {'int': 1563} |
| `chromeTabsProbedProfiles` | {'int': 1563} |
| `chromeUtilityPssKb` | {'int': 1563} |
| `desktopPssKb` | {'int': 1563} |
| `hostPssKb` | {'int': 1563} |
| `kind` | {'str': 1563} |
| `memAvailableKb` | {'int': 1563} |
| `memTotalKb` | {'int': 1563} |
| `otherPssKb` | {'int': 1563} |
| `processes` | {'int': 1563} |
| `pssFallbackProcesses` | {'int': 1563} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
