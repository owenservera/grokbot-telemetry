# sandbox_telemetry_parse — 2026-11-25 08:41:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2676479 lines=5930
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5915 |
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
| `chromeBrowserPssKb` | {'int': 5915} |
| `chromeGpuPssKb` | {'int': 5915} |
| `chromeOtherPssKb` | {'int': 5915} |
| `chromeProcesses` | {'int': 5915} |
| `chromeProfiles` | {'int': 5915} |
| `chromeRendererMaxPssKb` | {'int': 5915} |
| `chromeRendererPssKb` | {'int': 5915} |
| `chromeRenderers` | {'int': 5915} |
| `chromeTabs` | {'int': 5915} |
| `chromeTabsProbedProfiles` | {'int': 5915} |
| `chromeUtilityPssKb` | {'int': 5915} |
| `desktopPssKb` | {'int': 5915} |
| `hostPssKb` | {'int': 5915} |
| `kind` | {'str': 5915} |
| `memAvailableKb` | {'int': 5915} |
| `memTotalKb` | {'int': 5915} |
| `otherPssKb` | {'int': 5915} |
| `processes` | {'int': 5915} |
| `pssFallbackProcesses` | {'int': 5915} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
