# sandbox_telemetry_parse — 2026-11-19 19:04:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1403294 lines=3112
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3101 |
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
| `chromeBrowserPssKb` | {'int': 3101} |
| `chromeGpuPssKb` | {'int': 3101} |
| `chromeOtherPssKb` | {'int': 3101} |
| `chromeProcesses` | {'int': 3101} |
| `chromeProfiles` | {'int': 3101} |
| `chromeRendererMaxPssKb` | {'int': 3101} |
| `chromeRendererPssKb` | {'int': 3101} |
| `chromeRenderers` | {'int': 3101} |
| `chromeTabs` | {'int': 3101} |
| `chromeTabsProbedProfiles` | {'int': 3101} |
| `chromeUtilityPssKb` | {'int': 3101} |
| `desktopPssKb` | {'int': 3101} |
| `hostPssKb` | {'int': 3101} |
| `kind` | {'str': 3101} |
| `memAvailableKb` | {'int': 3101} |
| `memTotalKb` | {'int': 3101} |
| `otherPssKb` | {'int': 3101} |
| `processes` | {'int': 3101} |
| `pssFallbackProcesses` | {'int': 3101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
