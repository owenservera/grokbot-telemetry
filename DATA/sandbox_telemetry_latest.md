# sandbox_telemetry_parse — 2026-11-26 06:01:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3107481 lines=6883
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6868 |
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
| `chromeBrowserPssKb` | {'int': 6868} |
| `chromeGpuPssKb` | {'int': 6868} |
| `chromeOtherPssKb` | {'int': 6868} |
| `chromeProcesses` | {'int': 6868} |
| `chromeProfiles` | {'int': 6868} |
| `chromeRendererMaxPssKb` | {'int': 6868} |
| `chromeRendererPssKb` | {'int': 6868} |
| `chromeRenderers` | {'int': 6868} |
| `chromeTabs` | {'int': 6868} |
| `chromeTabsProbedProfiles` | {'int': 6868} |
| `chromeUtilityPssKb` | {'int': 6868} |
| `desktopPssKb` | {'int': 6868} |
| `hostPssKb` | {'int': 6868} |
| `kind` | {'str': 6868} |
| `memAvailableKb` | {'int': 6868} |
| `memTotalKb` | {'int': 6868} |
| `otherPssKb` | {'int': 6868} |
| `processes` | {'int': 6868} |
| `pssFallbackProcesses` | {'int': 6868} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
