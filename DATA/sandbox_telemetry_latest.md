# sandbox_telemetry_parse — 2026-11-25 11:27:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2737541 lines=6065
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6050 |
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
| `chromeBrowserPssKb` | {'int': 6050} |
| `chromeGpuPssKb` | {'int': 6050} |
| `chromeOtherPssKb` | {'int': 6050} |
| `chromeProcesses` | {'int': 6050} |
| `chromeProfiles` | {'int': 6050} |
| `chromeRendererMaxPssKb` | {'int': 6050} |
| `chromeRendererPssKb` | {'int': 6050} |
| `chromeRenderers` | {'int': 6050} |
| `chromeTabs` | {'int': 6050} |
| `chromeTabsProbedProfiles` | {'int': 6050} |
| `chromeUtilityPssKb` | {'int': 6050} |
| `desktopPssKb` | {'int': 6050} |
| `hostPssKb` | {'int': 6050} |
| `kind` | {'str': 6050} |
| `memAvailableKb` | {'int': 6050} |
| `memTotalKb` | {'int': 6050} |
| `otherPssKb` | {'int': 6050} |
| `processes` | {'int': 6050} |
| `pssFallbackProcesses` | {'int': 6050} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
