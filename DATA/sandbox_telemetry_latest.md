# sandbox_telemetry_parse — 2026-11-11 02:00:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1425496 lines=3158
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3149 |
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
| `chromeBrowserPssKb` | {'int': 3149} |
| `chromeGpuPssKb` | {'int': 3149} |
| `chromeOtherPssKb` | {'int': 3149} |
| `chromeProcesses` | {'int': 3149} |
| `chromeProfiles` | {'int': 3149} |
| `chromeRendererMaxPssKb` | {'int': 3149} |
| `chromeRendererPssKb` | {'int': 3149} |
| `chromeRenderers` | {'int': 3149} |
| `chromeTabs` | {'int': 3149} |
| `chromeTabsProbedProfiles` | {'int': 3149} |
| `chromeUtilityPssKb` | {'int': 3149} |
| `desktopPssKb` | {'int': 3149} |
| `hostPssKb` | {'int': 3149} |
| `kind` | {'str': 3149} |
| `memAvailableKb` | {'int': 3149} |
| `memTotalKb` | {'int': 3149} |
| `otherPssKb` | {'int': 3149} |
| `processes` | {'int': 3149} |
| `pssFallbackProcesses` | {'int': 3149} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
