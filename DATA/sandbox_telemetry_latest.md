# sandbox_telemetry_parse — 2026-11-28 17:24:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=982881 lines=2179
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2171 |
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
| `chromeBrowserPssKb` | {'int': 2171} |
| `chromeGpuPssKb` | {'int': 2171} |
| `chromeOtherPssKb` | {'int': 2171} |
| `chromeProcesses` | {'int': 2171} |
| `chromeProfiles` | {'int': 2171} |
| `chromeRendererMaxPssKb` | {'int': 2171} |
| `chromeRendererPssKb` | {'int': 2171} |
| `chromeRenderers` | {'int': 2171} |
| `chromeTabs` | {'int': 2171} |
| `chromeTabsProbedProfiles` | {'int': 2171} |
| `chromeUtilityPssKb` | {'int': 2171} |
| `desktopPssKb` | {'int': 2171} |
| `hostPssKb` | {'int': 2171} |
| `kind` | {'str': 2171} |
| `memAvailableKb` | {'int': 2171} |
| `memTotalKb` | {'int': 2171} |
| `otherPssKb` | {'int': 2171} |
| `processes` | {'int': 2171} |
| `pssFallbackProcesses` | {'int': 2171} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
