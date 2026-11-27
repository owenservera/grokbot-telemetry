# sandbox_telemetry_parse — 2026-11-27 23:04:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=628127 lines=1395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1387 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1387} |
| `chromeGpuPssKb` | {'int': 1387} |
| `chromeOtherPssKb` | {'int': 1387} |
| `chromeProcesses` | {'int': 1387} |
| `chromeProfiles` | {'int': 1387} |
| `chromeRendererMaxPssKb` | {'int': 1387} |
| `chromeRendererPssKb` | {'int': 1387} |
| `chromeRenderers` | {'int': 1387} |
| `chromeTabs` | {'int': 1387} |
| `chromeTabsProbedProfiles` | {'int': 1387} |
| `chromeUtilityPssKb` | {'int': 1387} |
| `desktopPssKb` | {'int': 1387} |
| `hostPssKb` | {'int': 1387} |
| `kind` | {'str': 1387} |
| `memAvailableKb` | {'int': 1387} |
| `memTotalKb` | {'int': 1387} |
| `otherPssKb` | {'int': 1387} |
| `processes` | {'int': 1387} |
| `pssFallbackProcesses` | {'int': 1387} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
