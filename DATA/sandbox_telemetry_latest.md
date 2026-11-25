# sandbox_telemetry_parse — 2026-11-25 07:33:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2652045 lines=5876
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5861 |
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
| `chromeBrowserPssKb` | {'int': 5861} |
| `chromeGpuPssKb` | {'int': 5861} |
| `chromeOtherPssKb` | {'int': 5861} |
| `chromeProcesses` | {'int': 5861} |
| `chromeProfiles` | {'int': 5861} |
| `chromeRendererMaxPssKb` | {'int': 5861} |
| `chromeRendererPssKb` | {'int': 5861} |
| `chromeRenderers` | {'int': 5861} |
| `chromeTabs` | {'int': 5861} |
| `chromeTabsProbedProfiles` | {'int': 5861} |
| `chromeUtilityPssKb` | {'int': 5861} |
| `desktopPssKb` | {'int': 5861} |
| `hostPssKb` | {'int': 5861} |
| `kind` | {'str': 5861} |
| `memAvailableKb` | {'int': 5861} |
| `memTotalKb` | {'int': 5861} |
| `otherPssKb` | {'int': 5861} |
| `processes` | {'int': 5861} |
| `pssFallbackProcesses` | {'int': 5861} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
