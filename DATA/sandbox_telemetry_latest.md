# sandbox_telemetry_parse — 2026-11-26 03:21:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3049116 lines=6754
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6739 |
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
| `chromeBrowserPssKb` | {'int': 6739} |
| `chromeGpuPssKb` | {'int': 6739} |
| `chromeOtherPssKb` | {'int': 6739} |
| `chromeProcesses` | {'int': 6739} |
| `chromeProfiles` | {'int': 6739} |
| `chromeRendererMaxPssKb` | {'int': 6739} |
| `chromeRendererPssKb` | {'int': 6739} |
| `chromeRenderers` | {'int': 6739} |
| `chromeTabs` | {'int': 6739} |
| `chromeTabsProbedProfiles` | {'int': 6739} |
| `chromeUtilityPssKb` | {'int': 6739} |
| `desktopPssKb` | {'int': 6739} |
| `hostPssKb` | {'int': 6739} |
| `kind` | {'str': 6739} |
| `memAvailableKb` | {'int': 6739} |
| `memTotalKb` | {'int': 6739} |
| `otherPssKb` | {'int': 6739} |
| `processes` | {'int': 6739} |
| `pssFallbackProcesses` | {'int': 6739} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
