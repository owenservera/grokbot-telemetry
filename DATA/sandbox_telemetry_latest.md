# sandbox_telemetry_parse — 2026-11-11 04:19:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1469798 lines=3256
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3247 |
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
| `chromeBrowserPssKb` | {'int': 3247} |
| `chromeGpuPssKb` | {'int': 3247} |
| `chromeOtherPssKb` | {'int': 3247} |
| `chromeProcesses` | {'int': 3247} |
| `chromeProfiles` | {'int': 3247} |
| `chromeRendererMaxPssKb` | {'int': 3247} |
| `chromeRendererPssKb` | {'int': 3247} |
| `chromeRenderers` | {'int': 3247} |
| `chromeTabs` | {'int': 3247} |
| `chromeTabsProbedProfiles` | {'int': 3247} |
| `chromeUtilityPssKb` | {'int': 3247} |
| `desktopPssKb` | {'int': 3247} |
| `hostPssKb` | {'int': 3247} |
| `kind` | {'str': 3247} |
| `memAvailableKb` | {'int': 3247} |
| `memTotalKb` | {'int': 3247} |
| `otherPssKb` | {'int': 3247} |
| `processes` | {'int': 3247} |
| `pssFallbackProcesses` | {'int': 3247} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
