# sandbox_telemetry_parse — 2026-11-26 03:43:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3054996 lines=6767
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6752 |
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
| `chromeBrowserPssKb` | {'int': 6752} |
| `chromeGpuPssKb` | {'int': 6752} |
| `chromeOtherPssKb` | {'int': 6752} |
| `chromeProcesses` | {'int': 6752} |
| `chromeProfiles` | {'int': 6752} |
| `chromeRendererMaxPssKb` | {'int': 6752} |
| `chromeRendererPssKb` | {'int': 6752} |
| `chromeRenderers` | {'int': 6752} |
| `chromeTabs` | {'int': 6752} |
| `chromeTabsProbedProfiles` | {'int': 6752} |
| `chromeUtilityPssKb` | {'int': 6752} |
| `desktopPssKb` | {'int': 6752} |
| `hostPssKb` | {'int': 6752} |
| `kind` | {'str': 6752} |
| `memAvailableKb` | {'int': 6752} |
| `memTotalKb` | {'int': 6752} |
| `otherPssKb` | {'int': 6752} |
| `processes` | {'int': 6752} |
| `pssFallbackProcesses` | {'int': 6752} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
