# sandbox_telemetry_parse — 2026-11-25 01:08:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2530422 lines=5607
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5592 |
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
| `chromeBrowserPssKb` | {'int': 5592} |
| `chromeGpuPssKb` | {'int': 5592} |
| `chromeOtherPssKb` | {'int': 5592} |
| `chromeProcesses` | {'int': 5592} |
| `chromeProfiles` | {'int': 5592} |
| `chromeRendererMaxPssKb` | {'int': 5592} |
| `chromeRendererPssKb` | {'int': 5592} |
| `chromeRenderers` | {'int': 5592} |
| `chromeTabs` | {'int': 5592} |
| `chromeTabsProbedProfiles` | {'int': 5592} |
| `chromeUtilityPssKb` | {'int': 5592} |
| `desktopPssKb` | {'int': 5592} |
| `hostPssKb` | {'int': 5592} |
| `kind` | {'str': 5592} |
| `memAvailableKb` | {'int': 5592} |
| `memTotalKb` | {'int': 5592} |
| `otherPssKb` | {'int': 5592} |
| `processes` | {'int': 5592} |
| `pssFallbackProcesses` | {'int': 5592} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
