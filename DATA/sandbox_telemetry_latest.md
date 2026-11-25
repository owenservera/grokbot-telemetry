# sandbox_telemetry_parse — 2026-11-25 21:13:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2925201 lines=6480
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6465 |
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
| `chromeBrowserPssKb` | {'int': 6465} |
| `chromeGpuPssKb` | {'int': 6465} |
| `chromeOtherPssKb` | {'int': 6465} |
| `chromeProcesses` | {'int': 6465} |
| `chromeProfiles` | {'int': 6465} |
| `chromeRendererMaxPssKb` | {'int': 6465} |
| `chromeRendererPssKb` | {'int': 6465} |
| `chromeRenderers` | {'int': 6465} |
| `chromeTabs` | {'int': 6465} |
| `chromeTabsProbedProfiles` | {'int': 6465} |
| `chromeUtilityPssKb` | {'int': 6465} |
| `desktopPssKb` | {'int': 6465} |
| `hostPssKb` | {'int': 6465} |
| `kind` | {'str': 6465} |
| `memAvailableKb` | {'int': 6465} |
| `memTotalKb` | {'int': 6465} |
| `otherPssKb` | {'int': 6465} |
| `processes` | {'int': 6465} |
| `pssFallbackProcesses` | {'int': 6465} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
