# sandbox_telemetry_parse — 2026-11-12 19:32:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2294872 lines=5079
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5070 |
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
| `chromeBrowserPssKb` | {'int': 5070} |
| `chromeGpuPssKb` | {'int': 5070} |
| `chromeOtherPssKb` | {'int': 5070} |
| `chromeProcesses` | {'int': 5070} |
| `chromeProfiles` | {'int': 5070} |
| `chromeRendererMaxPssKb` | {'int': 5070} |
| `chromeRendererPssKb` | {'int': 5070} |
| `chromeRenderers` | {'int': 5070} |
| `chromeTabs` | {'int': 5070} |
| `chromeTabsProbedProfiles` | {'int': 5070} |
| `chromeUtilityPssKb` | {'int': 5070} |
| `desktopPssKb` | {'int': 5070} |
| `hostPssKb` | {'int': 5070} |
| `kind` | {'str': 5070} |
| `memAvailableKb` | {'int': 5070} |
| `memTotalKb` | {'int': 5070} |
| `otherPssKb` | {'int': 5070} |
| `processes` | {'int': 5070} |
| `pssFallbackProcesses` | {'int': 5070} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
