# sandbox_telemetry_parse — 2026-11-06 23:08:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=205633 lines=462
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 453 |
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
| `chromeBrowserPssKb` | {'int': 453} |
| `chromeGpuPssKb` | {'int': 453} |
| `chromeOtherPssKb` | {'int': 453} |
| `chromeProcesses` | {'int': 453} |
| `chromeProfiles` | {'int': 453} |
| `chromeRendererMaxPssKb` | {'int': 453} |
| `chromeRendererPssKb` | {'int': 453} |
| `chromeRenderers` | {'int': 453} |
| `chromeTabs` | {'int': 453} |
| `chromeTabsProbedProfiles` | {'int': 453} |
| `chromeUtilityPssKb` | {'int': 453} |
| `desktopPssKb` | {'int': 453} |
| `hostPssKb` | {'int': 453} |
| `kind` | {'str': 453} |
| `memAvailableKb` | {'int': 453} |
| `memTotalKb` | {'int': 453} |
| `otherPssKb` | {'int': 453} |
| `processes` | {'int': 453} |
| `pssFallbackProcesses` | {'int': 453} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
