# sandbox_telemetry_parse — 2026-11-11 08:58:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1552100 lines=3438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3429 |
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
| `chromeBrowserPssKb` | {'int': 3429} |
| `chromeGpuPssKb` | {'int': 3429} |
| `chromeOtherPssKb` | {'int': 3429} |
| `chromeProcesses` | {'int': 3429} |
| `chromeProfiles` | {'int': 3429} |
| `chromeRendererMaxPssKb` | {'int': 3429} |
| `chromeRendererPssKb` | {'int': 3429} |
| `chromeRenderers` | {'int': 3429} |
| `chromeTabs` | {'int': 3429} |
| `chromeTabsProbedProfiles` | {'int': 3429} |
| `chromeUtilityPssKb` | {'int': 3429} |
| `desktopPssKb` | {'int': 3429} |
| `hostPssKb` | {'int': 3429} |
| `kind` | {'str': 3429} |
| `memAvailableKb` | {'int': 3429} |
| `memTotalKb` | {'int': 3429} |
| `otherPssKb` | {'int': 3429} |
| `processes` | {'int': 3429} |
| `pssFallbackProcesses` | {'int': 3429} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
