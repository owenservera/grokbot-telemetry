# sandbox_telemetry_parse — 2026-11-24 16:05:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2350761 lines=5210
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5195 |
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
| `chromeBrowserPssKb` | {'int': 5195} |
| `chromeGpuPssKb` | {'int': 5195} |
| `chromeOtherPssKb` | {'int': 5195} |
| `chromeProcesses` | {'int': 5195} |
| `chromeProfiles` | {'int': 5195} |
| `chromeRendererMaxPssKb` | {'int': 5195} |
| `chromeRendererPssKb` | {'int': 5195} |
| `chromeRenderers` | {'int': 5195} |
| `chromeTabs` | {'int': 5195} |
| `chromeTabsProbedProfiles` | {'int': 5195} |
| `chromeUtilityPssKb` | {'int': 5195} |
| `desktopPssKb` | {'int': 5195} |
| `hostPssKb` | {'int': 5195} |
| `kind` | {'str': 5195} |
| `memAvailableKb` | {'int': 5195} |
| `memTotalKb` | {'int': 5195} |
| `otherPssKb` | {'int': 5195} |
| `processes` | {'int': 5195} |
| `pssFallbackProcesses` | {'int': 5195} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
