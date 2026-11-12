# sandbox_telemetry_parse — 2026-11-12 20:20:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2311180 lines=5115
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5106 |
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
| `chromeBrowserPssKb` | {'int': 5106} |
| `chromeGpuPssKb` | {'int': 5106} |
| `chromeOtherPssKb` | {'int': 5106} |
| `chromeProcesses` | {'int': 5106} |
| `chromeProfiles` | {'int': 5106} |
| `chromeRendererMaxPssKb` | {'int': 5106} |
| `chromeRendererPssKb` | {'int': 5106} |
| `chromeRenderers` | {'int': 5106} |
| `chromeTabs` | {'int': 5106} |
| `chromeTabsProbedProfiles` | {'int': 5106} |
| `chromeUtilityPssKb` | {'int': 5106} |
| `desktopPssKb` | {'int': 5106} |
| `hostPssKb` | {'int': 5106} |
| `kind` | {'str': 5106} |
| `memAvailableKb` | {'int': 5106} |
| `memTotalKb` | {'int': 5106} |
| `otherPssKb` | {'int': 5106} |
| `processes` | {'int': 5106} |
| `pssFallbackProcesses` | {'int': 5106} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
