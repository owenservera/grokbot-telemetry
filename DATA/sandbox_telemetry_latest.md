# sandbox_telemetry_parse — 2026-11-09 10:49:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=619490 lines=1377
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1368 |
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
| `chromeBrowserPssKb` | {'int': 1368} |
| `chromeGpuPssKb` | {'int': 1368} |
| `chromeOtherPssKb` | {'int': 1368} |
| `chromeProcesses` | {'int': 1368} |
| `chromeProfiles` | {'int': 1368} |
| `chromeRendererMaxPssKb` | {'int': 1368} |
| `chromeRendererPssKb` | {'int': 1368} |
| `chromeRenderers` | {'int': 1368} |
| `chromeTabs` | {'int': 1368} |
| `chromeTabsProbedProfiles` | {'int': 1368} |
| `chromeUtilityPssKb` | {'int': 1368} |
| `desktopPssKb` | {'int': 1368} |
| `hostPssKb` | {'int': 1368} |
| `kind` | {'str': 1368} |
| `memAvailableKb` | {'int': 1368} |
| `memTotalKb` | {'int': 1368} |
| `otherPssKb` | {'int': 1368} |
| `processes` | {'int': 1368} |
| `pssFallbackProcesses` | {'int': 1368} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
