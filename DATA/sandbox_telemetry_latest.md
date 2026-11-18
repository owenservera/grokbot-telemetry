# sandbox_telemetry_parse — 2026-11-18 03:31:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=657551 lines=1460
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1453 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1453} |
| `chromeGpuPssKb` | {'int': 1453} |
| `chromeOtherPssKb` | {'int': 1453} |
| `chromeProcesses` | {'int': 1453} |
| `chromeProfiles` | {'int': 1453} |
| `chromeRendererMaxPssKb` | {'int': 1453} |
| `chromeRendererPssKb` | {'int': 1453} |
| `chromeRenderers` | {'int': 1453} |
| `chromeTabs` | {'int': 1453} |
| `chromeTabsProbedProfiles` | {'int': 1453} |
| `chromeUtilityPssKb` | {'int': 1453} |
| `desktopPssKb` | {'int': 1453} |
| `hostPssKb` | {'int': 1453} |
| `kind` | {'str': 1453} |
| `memAvailableKb` | {'int': 1453} |
| `memTotalKb` | {'int': 1453} |
| `otherPssKb` | {'int': 1453} |
| `processes` | {'int': 1453} |
| `pssFallbackProcesses` | {'int': 1453} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
