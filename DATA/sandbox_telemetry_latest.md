# sandbox_telemetry_parse — 2026-11-11 21:59:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1837218 lines=4068
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4059 |
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
| `chromeBrowserPssKb` | {'int': 4059} |
| `chromeGpuPssKb` | {'int': 4059} |
| `chromeOtherPssKb` | {'int': 4059} |
| `chromeProcesses` | {'int': 4059} |
| `chromeProfiles` | {'int': 4059} |
| `chromeRendererMaxPssKb` | {'int': 4059} |
| `chromeRendererPssKb` | {'int': 4059} |
| `chromeRenderers` | {'int': 4059} |
| `chromeTabs` | {'int': 4059} |
| `chromeTabsProbedProfiles` | {'int': 4059} |
| `chromeUtilityPssKb` | {'int': 4059} |
| `desktopPssKb` | {'int': 4059} |
| `hostPssKb` | {'int': 4059} |
| `kind` | {'str': 4059} |
| `memAvailableKb` | {'int': 4059} |
| `memTotalKb` | {'int': 4059} |
| `otherPssKb` | {'int': 4059} |
| `processes` | {'int': 4059} |
| `pssFallbackProcesses` | {'int': 4059} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
