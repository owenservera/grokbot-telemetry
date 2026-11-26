# sandbox_telemetry_parse — 2026-11-26 09:35:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3189832 lines=7065
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7050 |
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
| `chromeBrowserPssKb` | {'int': 7050} |
| `chromeGpuPssKb` | {'int': 7050} |
| `chromeOtherPssKb` | {'int': 7050} |
| `chromeProcesses` | {'int': 7050} |
| `chromeProfiles` | {'int': 7050} |
| `chromeRendererMaxPssKb` | {'int': 7050} |
| `chromeRendererPssKb` | {'int': 7050} |
| `chromeRenderers` | {'int': 7050} |
| `chromeTabs` | {'int': 7050} |
| `chromeTabsProbedProfiles` | {'int': 7050} |
| `chromeUtilityPssKb` | {'int': 7050} |
| `desktopPssKb` | {'int': 7050} |
| `hostPssKb` | {'int': 7050} |
| `kind` | {'str': 7050} |
| `memAvailableKb` | {'int': 7050} |
| `memTotalKb` | {'int': 7050} |
| `otherPssKb` | {'int': 7050} |
| `processes` | {'int': 7050} |
| `pssFallbackProcesses` | {'int': 7050} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
