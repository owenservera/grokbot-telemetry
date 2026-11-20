# sandbox_telemetry_parse — 2026-11-20 08:48:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1643840 lines=3644
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3633 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3633} |
| `chromeGpuPssKb` | {'int': 3633} |
| `chromeOtherPssKb` | {'int': 3633} |
| `chromeProcesses` | {'int': 3633} |
| `chromeProfiles` | {'int': 3633} |
| `chromeRendererMaxPssKb` | {'int': 3633} |
| `chromeRendererPssKb` | {'int': 3633} |
| `chromeRenderers` | {'int': 3633} |
| `chromeTabs` | {'int': 3633} |
| `chromeTabsProbedProfiles` | {'int': 3633} |
| `chromeUtilityPssKb` | {'int': 3633} |
| `desktopPssKb` | {'int': 3633} |
| `hostPssKb` | {'int': 3633} |
| `kind` | {'str': 3633} |
| `memAvailableKb` | {'int': 3633} |
| `memTotalKb` | {'int': 3633} |
| `otherPssKb` | {'int': 3633} |
| `processes` | {'int': 3633} |
| `pssFallbackProcesses` | {'int': 3633} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
