# sandbox_telemetry_parse — 2026-11-20 18:32:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1837154 lines=4073
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4060 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4060} |
| `chromeGpuPssKb` | {'int': 4060} |
| `chromeOtherPssKb` | {'int': 4060} |
| `chromeProcesses` | {'int': 4060} |
| `chromeProfiles` | {'int': 4060} |
| `chromeRendererMaxPssKb` | {'int': 4060} |
| `chromeRendererPssKb` | {'int': 4060} |
| `chromeRenderers` | {'int': 4060} |
| `chromeTabs` | {'int': 4060} |
| `chromeTabsProbedProfiles` | {'int': 4060} |
| `chromeUtilityPssKb` | {'int': 4060} |
| `desktopPssKb` | {'int': 4060} |
| `hostPssKb` | {'int': 4060} |
| `kind` | {'str': 4060} |
| `memAvailableKb` | {'int': 4060} |
| `memTotalKb` | {'int': 4060} |
| `otherPssKb` | {'int': 4060} |
| `processes` | {'int': 4060} |
| `pssFallbackProcesses` | {'int': 4060} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
