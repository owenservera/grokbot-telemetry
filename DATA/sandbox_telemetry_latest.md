# sandbox_telemetry_parse — 2026-11-25 19:10:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2884497 lines=6390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6375 |
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
| `chromeBrowserPssKb` | {'int': 6375} |
| `chromeGpuPssKb` | {'int': 6375} |
| `chromeOtherPssKb` | {'int': 6375} |
| `chromeProcesses` | {'int': 6375} |
| `chromeProfiles` | {'int': 6375} |
| `chromeRendererMaxPssKb` | {'int': 6375} |
| `chromeRendererPssKb` | {'int': 6375} |
| `chromeRenderers` | {'int': 6375} |
| `chromeTabs` | {'int': 6375} |
| `chromeTabsProbedProfiles` | {'int': 6375} |
| `chromeUtilityPssKb` | {'int': 6375} |
| `desktopPssKb` | {'int': 6375} |
| `hostPssKb` | {'int': 6375} |
| `kind` | {'str': 6375} |
| `memAvailableKb` | {'int': 6375} |
| `memTotalKb` | {'int': 6375} |
| `otherPssKb` | {'int': 6375} |
| `processes` | {'int': 6375} |
| `pssFallbackProcesses` | {'int': 6375} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
