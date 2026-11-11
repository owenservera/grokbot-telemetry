# sandbox_telemetry_parse — 2026-11-11 05:07:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1482454 lines=3284
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3275 |
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
| `chromeBrowserPssKb` | {'int': 3275} |
| `chromeGpuPssKb` | {'int': 3275} |
| `chromeOtherPssKb` | {'int': 3275} |
| `chromeProcesses` | {'int': 3275} |
| `chromeProfiles` | {'int': 3275} |
| `chromeRendererMaxPssKb` | {'int': 3275} |
| `chromeRendererPssKb` | {'int': 3275} |
| `chromeRenderers` | {'int': 3275} |
| `chromeTabs` | {'int': 3275} |
| `chromeTabsProbedProfiles` | {'int': 3275} |
| `chromeUtilityPssKb` | {'int': 3275} |
| `desktopPssKb` | {'int': 3275} |
| `hostPssKb` | {'int': 3275} |
| `kind` | {'str': 3275} |
| `memAvailableKb` | {'int': 3275} |
| `memTotalKb` | {'int': 3275} |
| `otherPssKb` | {'int': 3275} |
| `processes` | {'int': 3275} |
| `pssFallbackProcesses` | {'int': 3275} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
