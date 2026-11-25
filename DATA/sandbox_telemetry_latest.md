# sandbox_telemetry_parse — 2026-11-25 03:58:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2581509 lines=5720
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5705 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5705} |
| `chromeGpuPssKb` | {'int': 5705} |
| `chromeOtherPssKb` | {'int': 5705} |
| `chromeProcesses` | {'int': 5705} |
| `chromeProfiles` | {'int': 5705} |
| `chromeRendererMaxPssKb` | {'int': 5705} |
| `chromeRendererPssKb` | {'int': 5705} |
| `chromeRenderers` | {'int': 5705} |
| `chromeTabs` | {'int': 5705} |
| `chromeTabsProbedProfiles` | {'int': 5705} |
| `chromeUtilityPssKb` | {'int': 5705} |
| `desktopPssKb` | {'int': 5705} |
| `hostPssKb` | {'int': 5705} |
| `kind` | {'str': 5705} |
| `memAvailableKb` | {'int': 5705} |
| `memTotalKb` | {'int': 5705} |
| `otherPssKb` | {'int': 5705} |
| `processes` | {'int': 5705} |
| `pssFallbackProcesses` | {'int': 5705} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
