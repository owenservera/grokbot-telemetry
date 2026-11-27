# sandbox_telemetry_parse — 2026-11-27 18:28:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=541254 lines=1203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1195 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1195} |
| `chromeGpuPssKb` | {'int': 1195} |
| `chromeOtherPssKb` | {'int': 1195} |
| `chromeProcesses` | {'int': 1195} |
| `chromeProfiles` | {'int': 1195} |
| `chromeRendererMaxPssKb` | {'int': 1195} |
| `chromeRendererPssKb` | {'int': 1195} |
| `chromeRenderers` | {'int': 1195} |
| `chromeTabs` | {'int': 1195} |
| `chromeTabsProbedProfiles` | {'int': 1195} |
| `chromeUtilityPssKb` | {'int': 1195} |
| `desktopPssKb` | {'int': 1195} |
| `hostPssKb` | {'int': 1195} |
| `kind` | {'str': 1195} |
| `memAvailableKb` | {'int': 1195} |
| `memTotalKb` | {'int': 1195} |
| `otherPssKb` | {'int': 1195} |
| `processes` | {'int': 1195} |
| `pssFallbackProcesses` | {'int': 1195} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
