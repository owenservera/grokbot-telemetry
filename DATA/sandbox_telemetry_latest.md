# sandbox_telemetry_parse — 2026-11-27 23:22:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=633106 lines=1406
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1398 |
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
| `chromeBrowserPssKb` | {'int': 1398} |
| `chromeGpuPssKb` | {'int': 1398} |
| `chromeOtherPssKb` | {'int': 1398} |
| `chromeProcesses` | {'int': 1398} |
| `chromeProfiles` | {'int': 1398} |
| `chromeRendererMaxPssKb` | {'int': 1398} |
| `chromeRendererPssKb` | {'int': 1398} |
| `chromeRenderers` | {'int': 1398} |
| `chromeTabs` | {'int': 1398} |
| `chromeTabsProbedProfiles` | {'int': 1398} |
| `chromeUtilityPssKb` | {'int': 1398} |
| `desktopPssKb` | {'int': 1398} |
| `hostPssKb` | {'int': 1398} |
| `kind` | {'str': 1398} |
| `memAvailableKb` | {'int': 1398} |
| `memTotalKb` | {'int': 1398} |
| `otherPssKb` | {'int': 1398} |
| `processes` | {'int': 1398} |
| `pssFallbackProcesses` | {'int': 1398} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
