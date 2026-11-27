# sandbox_telemetry_parse — 2026-11-27 20:12:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=572938 lines=1273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1265 |
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
| `chromeBrowserPssKb` | {'int': 1265} |
| `chromeGpuPssKb` | {'int': 1265} |
| `chromeOtherPssKb` | {'int': 1265} |
| `chromeProcesses` | {'int': 1265} |
| `chromeProfiles` | {'int': 1265} |
| `chromeRendererMaxPssKb` | {'int': 1265} |
| `chromeRendererPssKb` | {'int': 1265} |
| `chromeRenderers` | {'int': 1265} |
| `chromeTabs` | {'int': 1265} |
| `chromeTabsProbedProfiles` | {'int': 1265} |
| `chromeUtilityPssKb` | {'int': 1265} |
| `desktopPssKb` | {'int': 1265} |
| `hostPssKb` | {'int': 1265} |
| `kind` | {'str': 1265} |
| `memAvailableKb` | {'int': 1265} |
| `memTotalKb` | {'int': 1265} |
| `otherPssKb` | {'int': 1265} |
| `processes` | {'int': 1265} |
| `pssFallbackProcesses` | {'int': 1265} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
