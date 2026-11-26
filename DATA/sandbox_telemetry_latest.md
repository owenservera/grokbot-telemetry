# sandbox_telemetry_parse — 2026-11-26 13:49:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3278513 lines=7261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7246 |
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
| `chromeBrowserPssKb` | {'int': 7246} |
| `chromeGpuPssKb` | {'int': 7246} |
| `chromeOtherPssKb` | {'int': 7246} |
| `chromeProcesses` | {'int': 7246} |
| `chromeProfiles` | {'int': 7246} |
| `chromeRendererMaxPssKb` | {'int': 7246} |
| `chromeRendererPssKb` | {'int': 7246} |
| `chromeRenderers` | {'int': 7246} |
| `chromeTabs` | {'int': 7246} |
| `chromeTabsProbedProfiles` | {'int': 7246} |
| `chromeUtilityPssKb` | {'int': 7246} |
| `desktopPssKb` | {'int': 7246} |
| `hostPssKb` | {'int': 7246} |
| `kind` | {'str': 7246} |
| `memAvailableKb` | {'int': 7246} |
| `memTotalKb` | {'int': 7246} |
| `otherPssKb` | {'int': 7246} |
| `processes` | {'int': 7246} |
| `pssFallbackProcesses` | {'int': 7246} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
