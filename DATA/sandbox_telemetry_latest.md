# sandbox_telemetry_parse — 2026-11-07 14:57:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=508655 lines=1132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1123 |
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
| `chromeBrowserPssKb` | {'int': 1123} |
| `chromeGpuPssKb` | {'int': 1123} |
| `chromeOtherPssKb` | {'int': 1123} |
| `chromeProcesses` | {'int': 1123} |
| `chromeProfiles` | {'int': 1123} |
| `chromeRendererMaxPssKb` | {'int': 1123} |
| `chromeRendererPssKb` | {'int': 1123} |
| `chromeRenderers` | {'int': 1123} |
| `chromeTabs` | {'int': 1123} |
| `chromeTabsProbedProfiles` | {'int': 1123} |
| `chromeUtilityPssKb` | {'int': 1123} |
| `desktopPssKb` | {'int': 1123} |
| `hostPssKb` | {'int': 1123} |
| `kind` | {'str': 1123} |
| `memAvailableKb` | {'int': 1123} |
| `memTotalKb` | {'int': 1123} |
| `otherPssKb` | {'int': 1123} |
| `processes` | {'int': 1123} |
| `pssFallbackProcesses` | {'int': 1123} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
