# sandbox_telemetry_parse — 2026-11-11 13:35:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1652562 lines=3660
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3651 |
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
| `chromeBrowserPssKb` | {'int': 3651} |
| `chromeGpuPssKb` | {'int': 3651} |
| `chromeOtherPssKb` | {'int': 3651} |
| `chromeProcesses` | {'int': 3651} |
| `chromeProfiles` | {'int': 3651} |
| `chromeRendererMaxPssKb` | {'int': 3651} |
| `chromeRendererPssKb` | {'int': 3651} |
| `chromeRenderers` | {'int': 3651} |
| `chromeTabs` | {'int': 3651} |
| `chromeTabsProbedProfiles` | {'int': 3651} |
| `chromeUtilityPssKb` | {'int': 3651} |
| `desktopPssKb` | {'int': 3651} |
| `hostPssKb` | {'int': 3651} |
| `kind` | {'str': 3651} |
| `memAvailableKb` | {'int': 3651} |
| `memTotalKb` | {'int': 3651} |
| `otherPssKb` | {'int': 3651} |
| `processes` | {'int': 3651} |
| `pssFallbackProcesses` | {'int': 3651} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
