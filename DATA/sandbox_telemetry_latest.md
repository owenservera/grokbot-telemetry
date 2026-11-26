# sandbox_telemetry_parse — 2026-11-26 08:53:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3170812 lines=7023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7008 |
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
| `chromeBrowserPssKb` | {'int': 7008} |
| `chromeGpuPssKb` | {'int': 7008} |
| `chromeOtherPssKb` | {'int': 7008} |
| `chromeProcesses` | {'int': 7008} |
| `chromeProfiles` | {'int': 7008} |
| `chromeRendererMaxPssKb` | {'int': 7008} |
| `chromeRendererPssKb` | {'int': 7008} |
| `chromeRenderers` | {'int': 7008} |
| `chromeTabs` | {'int': 7008} |
| `chromeTabsProbedProfiles` | {'int': 7008} |
| `chromeUtilityPssKb` | {'int': 7008} |
| `desktopPssKb` | {'int': 7008} |
| `hostPssKb` | {'int': 7008} |
| `kind` | {'str': 7008} |
| `memAvailableKb` | {'int': 7008} |
| `memTotalKb` | {'int': 7008} |
| `otherPssKb` | {'int': 7008} |
| `processes` | {'int': 7008} |
| `pssFallbackProcesses` | {'int': 7008} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
