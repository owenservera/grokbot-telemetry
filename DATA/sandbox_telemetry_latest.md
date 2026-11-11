# sandbox_telemetry_parse — 2026-11-11 19:49:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1790599 lines=3965
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3956 |
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
| `chromeBrowserPssKb` | {'int': 3956} |
| `chromeGpuPssKb` | {'int': 3956} |
| `chromeOtherPssKb` | {'int': 3956} |
| `chromeProcesses` | {'int': 3956} |
| `chromeProfiles` | {'int': 3956} |
| `chromeRendererMaxPssKb` | {'int': 3956} |
| `chromeRendererPssKb` | {'int': 3956} |
| `chromeRenderers` | {'int': 3956} |
| `chromeTabs` | {'int': 3956} |
| `chromeTabsProbedProfiles` | {'int': 3956} |
| `chromeUtilityPssKb` | {'int': 3956} |
| `desktopPssKb` | {'int': 3956} |
| `hostPssKb` | {'int': 3956} |
| `kind` | {'str': 3956} |
| `memAvailableKb` | {'int': 3956} |
| `memTotalKb` | {'int': 3956} |
| `otherPssKb` | {'int': 3956} |
| `processes` | {'int': 3956} |
| `pssFallbackProcesses` | {'int': 3956} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
