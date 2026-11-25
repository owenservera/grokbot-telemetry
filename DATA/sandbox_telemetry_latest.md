# sandbox_telemetry_parse — 2026-11-25 04:16:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2588299 lines=5735
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5720 |
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
| `chromeBrowserPssKb` | {'int': 5720} |
| `chromeGpuPssKb` | {'int': 5720} |
| `chromeOtherPssKb` | {'int': 5720} |
| `chromeProcesses` | {'int': 5720} |
| `chromeProfiles` | {'int': 5720} |
| `chromeRendererMaxPssKb` | {'int': 5720} |
| `chromeRendererPssKb` | {'int': 5720} |
| `chromeRenderers` | {'int': 5720} |
| `chromeTabs` | {'int': 5720} |
| `chromeTabsProbedProfiles` | {'int': 5720} |
| `chromeUtilityPssKb` | {'int': 5720} |
| `desktopPssKb` | {'int': 5720} |
| `hostPssKb` | {'int': 5720} |
| `kind` | {'str': 5720} |
| `memAvailableKb` | {'int': 5720} |
| `memTotalKb` | {'int': 5720} |
| `otherPssKb` | {'int': 5720} |
| `processes` | {'int': 5720} |
| `pssFallbackProcesses` | {'int': 5720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
