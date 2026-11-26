# sandbox_telemetry_parse — 2026-11-26 10:03:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3200702 lines=7089
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7074 |
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
| `chromeBrowserPssKb` | {'int': 7074} |
| `chromeGpuPssKb` | {'int': 7074} |
| `chromeOtherPssKb` | {'int': 7074} |
| `chromeProcesses` | {'int': 7074} |
| `chromeProfiles` | {'int': 7074} |
| `chromeRendererMaxPssKb` | {'int': 7074} |
| `chromeRendererPssKb` | {'int': 7074} |
| `chromeRenderers` | {'int': 7074} |
| `chromeTabs` | {'int': 7074} |
| `chromeTabsProbedProfiles` | {'int': 7074} |
| `chromeUtilityPssKb` | {'int': 7074} |
| `desktopPssKb` | {'int': 7074} |
| `hostPssKb` | {'int': 7074} |
| `kind` | {'str': 7074} |
| `memAvailableKb` | {'int': 7074} |
| `memTotalKb` | {'int': 7074} |
| `otherPssKb` | {'int': 7074} |
| `processes` | {'int': 7074} |
| `pssFallbackProcesses` | {'int': 7074} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
