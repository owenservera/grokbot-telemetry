# sandbox_telemetry_parse — 2026-11-24 19:04:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2408734 lines=5338
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5323 |
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
| `chromeBrowserPssKb` | {'int': 5323} |
| `chromeGpuPssKb` | {'int': 5323} |
| `chromeOtherPssKb` | {'int': 5323} |
| `chromeProcesses` | {'int': 5323} |
| `chromeProfiles` | {'int': 5323} |
| `chromeRendererMaxPssKb` | {'int': 5323} |
| `chromeRendererPssKb` | {'int': 5323} |
| `chromeRenderers` | {'int': 5323} |
| `chromeTabs` | {'int': 5323} |
| `chromeTabsProbedProfiles` | {'int': 5323} |
| `chromeUtilityPssKb` | {'int': 5323} |
| `desktopPssKb` | {'int': 5323} |
| `hostPssKb` | {'int': 5323} |
| `kind` | {'str': 5323} |
| `memAvailableKb` | {'int': 5323} |
| `memTotalKb` | {'int': 5323} |
| `otherPssKb` | {'int': 5323} |
| `processes` | {'int': 5323} |
| `pssFallbackProcesses` | {'int': 5323} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
