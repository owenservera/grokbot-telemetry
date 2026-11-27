# sandbox_telemetry_parse — 2026-11-27 20:15:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=573842 lines=1275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1267 |
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
| `chromeBrowserPssKb` | {'int': 1267} |
| `chromeGpuPssKb` | {'int': 1267} |
| `chromeOtherPssKb` | {'int': 1267} |
| `chromeProcesses` | {'int': 1267} |
| `chromeProfiles` | {'int': 1267} |
| `chromeRendererMaxPssKb` | {'int': 1267} |
| `chromeRendererPssKb` | {'int': 1267} |
| `chromeRenderers` | {'int': 1267} |
| `chromeTabs` | {'int': 1267} |
| `chromeTabsProbedProfiles` | {'int': 1267} |
| `chromeUtilityPssKb` | {'int': 1267} |
| `desktopPssKb` | {'int': 1267} |
| `hostPssKb` | {'int': 1267} |
| `kind` | {'str': 1267} |
| `memAvailableKb` | {'int': 1267} |
| `memTotalKb` | {'int': 1267} |
| `otherPssKb` | {'int': 1267} |
| `processes` | {'int': 1267} |
| `pssFallbackProcesses` | {'int': 1267} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
