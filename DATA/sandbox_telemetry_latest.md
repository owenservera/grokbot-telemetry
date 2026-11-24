# sandbox_telemetry_parse — 2026-11-24 05:28:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2149052 lines=4764
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4749 |
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
| `chromeBrowserPssKb` | {'int': 4749} |
| `chromeGpuPssKb` | {'int': 4749} |
| `chromeOtherPssKb` | {'int': 4749} |
| `chromeProcesses` | {'int': 4749} |
| `chromeProfiles` | {'int': 4749} |
| `chromeRendererMaxPssKb` | {'int': 4749} |
| `chromeRendererPssKb` | {'int': 4749} |
| `chromeRenderers` | {'int': 4749} |
| `chromeTabs` | {'int': 4749} |
| `chromeTabsProbedProfiles` | {'int': 4749} |
| `chromeUtilityPssKb` | {'int': 4749} |
| `desktopPssKb` | {'int': 4749} |
| `hostPssKb` | {'int': 4749} |
| `kind` | {'str': 4749} |
| `memAvailableKb` | {'int': 4749} |
| `memTotalKb` | {'int': 4749} |
| `otherPssKb` | {'int': 4749} |
| `processes` | {'int': 4749} |
| `pssFallbackProcesses` | {'int': 4749} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
