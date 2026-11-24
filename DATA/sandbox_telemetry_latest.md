# sandbox_telemetry_parse — 2026-11-24 14:18:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2318170 lines=5138
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5123 |
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
| `chromeBrowserPssKb` | {'int': 5123} |
| `chromeGpuPssKb` | {'int': 5123} |
| `chromeOtherPssKb` | {'int': 5123} |
| `chromeProcesses` | {'int': 5123} |
| `chromeProfiles` | {'int': 5123} |
| `chromeRendererMaxPssKb` | {'int': 5123} |
| `chromeRendererPssKb` | {'int': 5123} |
| `chromeRenderers` | {'int': 5123} |
| `chromeTabs` | {'int': 5123} |
| `chromeTabsProbedProfiles` | {'int': 5123} |
| `chromeUtilityPssKb` | {'int': 5123} |
| `desktopPssKb` | {'int': 5123} |
| `hostPssKb` | {'int': 5123} |
| `kind` | {'str': 5123} |
| `memAvailableKb` | {'int': 5123} |
| `memTotalKb` | {'int': 5123} |
| `otherPssKb` | {'int': 5123} |
| `processes` | {'int': 5123} |
| `pssFallbackProcesses` | {'int': 5123} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
