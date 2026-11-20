# sandbox_telemetry_parse — 2026-11-20 18:22:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1832631 lines=4063
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4050 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4050} |
| `chromeGpuPssKb` | {'int': 4050} |
| `chromeOtherPssKb` | {'int': 4050} |
| `chromeProcesses` | {'int': 4050} |
| `chromeProfiles` | {'int': 4050} |
| `chromeRendererMaxPssKb` | {'int': 4050} |
| `chromeRendererPssKb` | {'int': 4050} |
| `chromeRenderers` | {'int': 4050} |
| `chromeTabs` | {'int': 4050} |
| `chromeTabsProbedProfiles` | {'int': 4050} |
| `chromeUtilityPssKb` | {'int': 4050} |
| `desktopPssKb` | {'int': 4050} |
| `hostPssKb` | {'int': 4050} |
| `kind` | {'str': 4050} |
| `memAvailableKb` | {'int': 4050} |
| `memTotalKb` | {'int': 4050} |
| `otherPssKb` | {'int': 4050} |
| `processes` | {'int': 4050} |
| `pssFallbackProcesses` | {'int': 4050} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
