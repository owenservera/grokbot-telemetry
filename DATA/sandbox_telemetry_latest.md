# sandbox_telemetry_parse — 2026-11-11 05:57:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1498286 lines=3319
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3310 |
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
| `chromeBrowserPssKb` | {'int': 3310} |
| `chromeGpuPssKb` | {'int': 3310} |
| `chromeOtherPssKb` | {'int': 3310} |
| `chromeProcesses` | {'int': 3310} |
| `chromeProfiles` | {'int': 3310} |
| `chromeRendererMaxPssKb` | {'int': 3310} |
| `chromeRendererPssKb` | {'int': 3310} |
| `chromeRenderers` | {'int': 3310} |
| `chromeTabs` | {'int': 3310} |
| `chromeTabsProbedProfiles` | {'int': 3310} |
| `chromeUtilityPssKb` | {'int': 3310} |
| `desktopPssKb` | {'int': 3310} |
| `hostPssKb` | {'int': 3310} |
| `kind` | {'str': 3310} |
| `memAvailableKb` | {'int': 3310} |
| `memTotalKb` | {'int': 3310} |
| `otherPssKb` | {'int': 3310} |
| `processes` | {'int': 3310} |
| `pssFallbackProcesses` | {'int': 3310} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
