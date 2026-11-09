# sandbox_telemetry_parse — 2026-11-09 09:42:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=597785 lines=1329
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1320 |
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
| `chromeBrowserPssKb` | {'int': 1320} |
| `chromeGpuPssKb` | {'int': 1320} |
| `chromeOtherPssKb` | {'int': 1320} |
| `chromeProcesses` | {'int': 1320} |
| `chromeProfiles` | {'int': 1320} |
| `chromeRendererMaxPssKb` | {'int': 1320} |
| `chromeRendererPssKb` | {'int': 1320} |
| `chromeRenderers` | {'int': 1320} |
| `chromeTabs` | {'int': 1320} |
| `chromeTabsProbedProfiles` | {'int': 1320} |
| `chromeUtilityPssKb` | {'int': 1320} |
| `desktopPssKb` | {'int': 1320} |
| `hostPssKb` | {'int': 1320} |
| `kind` | {'str': 1320} |
| `memAvailableKb` | {'int': 1320} |
| `memTotalKb` | {'int': 1320} |
| `otherPssKb` | {'int': 1320} |
| `processes` | {'int': 1320} |
| `pssFallbackProcesses` | {'int': 1320} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
