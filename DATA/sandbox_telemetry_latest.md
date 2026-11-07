# sandbox_telemetry_parse — 2026-11-07 14:39:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=505039 lines=1124
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1115 |
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
| `chromeBrowserPssKb` | {'int': 1115} |
| `chromeGpuPssKb` | {'int': 1115} |
| `chromeOtherPssKb` | {'int': 1115} |
| `chromeProcesses` | {'int': 1115} |
| `chromeProfiles` | {'int': 1115} |
| `chromeRendererMaxPssKb` | {'int': 1115} |
| `chromeRendererPssKb` | {'int': 1115} |
| `chromeRenderers` | {'int': 1115} |
| `chromeTabs` | {'int': 1115} |
| `chromeTabsProbedProfiles` | {'int': 1115} |
| `chromeUtilityPssKb` | {'int': 1115} |
| `desktopPssKb` | {'int': 1115} |
| `hostPssKb` | {'int': 1115} |
| `kind` | {'str': 1115} |
| `memAvailableKb` | {'int': 1115} |
| `memTotalKb` | {'int': 1115} |
| `otherPssKb` | {'int': 1115} |
| `processes` | {'int': 1115} |
| `pssFallbackProcesses` | {'int': 1115} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
