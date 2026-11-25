# sandbox_telemetry_parse — 2026-11-25 09:08:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2685980 lines=5951
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5936 |
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
| `chromeBrowserPssKb` | {'int': 5936} |
| `chromeGpuPssKb` | {'int': 5936} |
| `chromeOtherPssKb` | {'int': 5936} |
| `chromeProcesses` | {'int': 5936} |
| `chromeProfiles` | {'int': 5936} |
| `chromeRendererMaxPssKb` | {'int': 5936} |
| `chromeRendererPssKb` | {'int': 5936} |
| `chromeRenderers` | {'int': 5936} |
| `chromeTabs` | {'int': 5936} |
| `chromeTabsProbedProfiles` | {'int': 5936} |
| `chromeUtilityPssKb` | {'int': 5936} |
| `desktopPssKb` | {'int': 5936} |
| `hostPssKb` | {'int': 5936} |
| `kind` | {'str': 5936} |
| `memAvailableKb` | {'int': 5936} |
| `memTotalKb` | {'int': 5936} |
| `otherPssKb` | {'int': 5936} |
| `processes` | {'int': 5936} |
| `pssFallbackProcesses` | {'int': 5936} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
