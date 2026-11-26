# sandbox_telemetry_parse — 2026-11-26 17:21:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=5591 lines=19
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 11 |
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
| `chromeBrowserPssKb` | {'int': 11} |
| `chromeGpuPssKb` | {'int': 11} |
| `chromeOtherPssKb` | {'int': 11} |
| `chromeProcesses` | {'int': 11} |
| `chromeProfiles` | {'int': 11} |
| `chromeRendererMaxPssKb` | {'int': 11} |
| `chromeRendererPssKb` | {'int': 11} |
| `chromeRenderers` | {'int': 11} |
| `chromeTabs` | {'int': 11} |
| `chromeTabsProbedProfiles` | {'int': 11} |
| `chromeUtilityPssKb` | {'int': 11} |
| `desktopPssKb` | {'int': 11} |
| `hostPssKb` | {'int': 11} |
| `kind` | {'str': 11} |
| `memAvailableKb` | {'int': 11} |
| `memTotalKb` | {'int': 11} |
| `otherPssKb` | {'int': 11} |
| `processes` | {'int': 11} |
| `pssFallbackProcesses` | {'int': 11} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
