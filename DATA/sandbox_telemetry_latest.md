# sandbox_telemetry_parse — 2026-11-11 00:43:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1404246 lines=3111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3102 |
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
| `chromeBrowserPssKb` | {'int': 3102} |
| `chromeGpuPssKb` | {'int': 3102} |
| `chromeOtherPssKb` | {'int': 3102} |
| `chromeProcesses` | {'int': 3102} |
| `chromeProfiles` | {'int': 3102} |
| `chromeRendererMaxPssKb` | {'int': 3102} |
| `chromeRendererPssKb` | {'int': 3102} |
| `chromeRenderers` | {'int': 3102} |
| `chromeTabs` | {'int': 3102} |
| `chromeTabsProbedProfiles` | {'int': 3102} |
| `chromeUtilityPssKb` | {'int': 3102} |
| `desktopPssKb` | {'int': 3102} |
| `hostPssKb` | {'int': 3102} |
| `kind` | {'str': 3102} |
| `memAvailableKb` | {'int': 3102} |
| `memTotalKb` | {'int': 3102} |
| `otherPssKb` | {'int': 3102} |
| `processes` | {'int': 3102} |
| `pssFallbackProcesses` | {'int': 3102} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
