# sandbox_telemetry_parse — 2026-11-26 16:30:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3331136 lines=7379
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7362 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7362} |
| `chromeGpuPssKb` | {'int': 7362} |
| `chromeOtherPssKb` | {'int': 7362} |
| `chromeProcesses` | {'int': 7362} |
| `chromeProfiles` | {'int': 7362} |
| `chromeRendererMaxPssKb` | {'int': 7362} |
| `chromeRendererPssKb` | {'int': 7362} |
| `chromeRenderers` | {'int': 7362} |
| `chromeTabs` | {'int': 7362} |
| `chromeTabsProbedProfiles` | {'int': 7362} |
| `chromeUtilityPssKb` | {'int': 7362} |
| `desktopPssKb` | {'int': 7362} |
| `hostPssKb` | {'int': 7362} |
| `kind` | {'str': 7362} |
| `memAvailableKb` | {'int': 7362} |
| `memTotalKb` | {'int': 7362} |
| `otherPssKb` | {'int': 7362} |
| `processes` | {'int': 7362} |
| `pssFallbackProcesses` | {'int': 7362} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
