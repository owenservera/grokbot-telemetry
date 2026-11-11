# sandbox_telemetry_parse — 2026-11-11 13:04:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1643070 lines=3639
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3630 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3630} |
| `chromeGpuPssKb` | {'int': 3630} |
| `chromeOtherPssKb` | {'int': 3630} |
| `chromeProcesses` | {'int': 3630} |
| `chromeProfiles` | {'int': 3630} |
| `chromeRendererMaxPssKb` | {'int': 3630} |
| `chromeRendererPssKb` | {'int': 3630} |
| `chromeRenderers` | {'int': 3630} |
| `chromeTabs` | {'int': 3630} |
| `chromeTabsProbedProfiles` | {'int': 3630} |
| `chromeUtilityPssKb` | {'int': 3630} |
| `desktopPssKb` | {'int': 3630} |
| `hostPssKb` | {'int': 3630} |
| `kind` | {'str': 3630} |
| `memAvailableKb` | {'int': 3630} |
| `memTotalKb` | {'int': 3630} |
| `otherPssKb` | {'int': 3630} |
| `processes` | {'int': 3630} |
| `pssFallbackProcesses` | {'int': 3630} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
