# sandbox_telemetry_parse — 2026-11-20 03:50:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1562922 lines=3465
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3454 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3454} |
| `chromeGpuPssKb` | {'int': 3454} |
| `chromeOtherPssKb` | {'int': 3454} |
| `chromeProcesses` | {'int': 3454} |
| `chromeProfiles` | {'int': 3454} |
| `chromeRendererMaxPssKb` | {'int': 3454} |
| `chromeRendererPssKb` | {'int': 3454} |
| `chromeRenderers` | {'int': 3454} |
| `chromeTabs` | {'int': 3454} |
| `chromeTabsProbedProfiles` | {'int': 3454} |
| `chromeUtilityPssKb` | {'int': 3454} |
| `desktopPssKb` | {'int': 3454} |
| `hostPssKb` | {'int': 3454} |
| `kind` | {'str': 3454} |
| `memAvailableKb` | {'int': 3454} |
| `memTotalKb` | {'int': 3454} |
| `otherPssKb` | {'int': 3454} |
| `processes` | {'int': 3454} |
| `pssFallbackProcesses` | {'int': 3454} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
