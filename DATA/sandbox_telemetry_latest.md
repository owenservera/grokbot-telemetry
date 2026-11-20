# sandbox_telemetry_parse — 2026-11-20 13:55:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1743334 lines=3864
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3853 |
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
| `chromeBrowserPssKb` | {'int': 3853} |
| `chromeGpuPssKb` | {'int': 3853} |
| `chromeOtherPssKb` | {'int': 3853} |
| `chromeProcesses` | {'int': 3853} |
| `chromeProfiles` | {'int': 3853} |
| `chromeRendererMaxPssKb` | {'int': 3853} |
| `chromeRendererPssKb` | {'int': 3853} |
| `chromeRenderers` | {'int': 3853} |
| `chromeTabs` | {'int': 3853} |
| `chromeTabsProbedProfiles` | {'int': 3853} |
| `chromeUtilityPssKb` | {'int': 3853} |
| `desktopPssKb` | {'int': 3853} |
| `hostPssKb` | {'int': 3853} |
| `kind` | {'str': 3853} |
| `memAvailableKb` | {'int': 3853} |
| `memTotalKb` | {'int': 3853} |
| `otherPssKb` | {'int': 3853} |
| `processes` | {'int': 3853} |
| `pssFallbackProcesses` | {'int': 3853} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
