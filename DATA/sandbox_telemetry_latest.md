# sandbox_telemetry_parse — 2026-11-11 00:28:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1399721 lines=3101
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3092 |
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
| `chromeBrowserPssKb` | {'int': 3092} |
| `chromeGpuPssKb` | {'int': 3092} |
| `chromeOtherPssKb` | {'int': 3092} |
| `chromeProcesses` | {'int': 3092} |
| `chromeProfiles` | {'int': 3092} |
| `chromeRendererMaxPssKb` | {'int': 3092} |
| `chromeRendererPssKb` | {'int': 3092} |
| `chromeRenderers` | {'int': 3092} |
| `chromeTabs` | {'int': 3092} |
| `chromeTabsProbedProfiles` | {'int': 3092} |
| `chromeUtilityPssKb` | {'int': 3092} |
| `desktopPssKb` | {'int': 3092} |
| `hostPssKb` | {'int': 3092} |
| `kind` | {'str': 3092} |
| `memAvailableKb` | {'int': 3092} |
| `memTotalKb` | {'int': 3092} |
| `otherPssKb` | {'int': 3092} |
| `processes` | {'int': 3092} |
| `pssFallbackProcesses` | {'int': 3092} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
