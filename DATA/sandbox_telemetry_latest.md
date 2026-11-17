# sandbox_telemetry_parse — 2026-11-17 23:35:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=585214 lines=1300
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1293 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1293} |
| `chromeGpuPssKb` | {'int': 1293} |
| `chromeOtherPssKb` | {'int': 1293} |
| `chromeProcesses` | {'int': 1293} |
| `chromeProfiles` | {'int': 1293} |
| `chromeRendererMaxPssKb` | {'int': 1293} |
| `chromeRendererPssKb` | {'int': 1293} |
| `chromeRenderers` | {'int': 1293} |
| `chromeTabs` | {'int': 1293} |
| `chromeTabsProbedProfiles` | {'int': 1293} |
| `chromeUtilityPssKb` | {'int': 1293} |
| `desktopPssKb` | {'int': 1293} |
| `hostPssKb` | {'int': 1293} |
| `kind` | {'str': 1293} |
| `memAvailableKb` | {'int': 1293} |
| `memTotalKb` | {'int': 1293} |
| `otherPssKb` | {'int': 1293} |
| `processes` | {'int': 1293} |
| `pssFallbackProcesses` | {'int': 1293} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
