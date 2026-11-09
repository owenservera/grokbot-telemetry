# sandbox_telemetry_parse — 2026-11-09 16:36:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=743502 lines=1651
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1642 |
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
| `chromeBrowserPssKb` | {'int': 1642} |
| `chromeGpuPssKb` | {'int': 1642} |
| `chromeOtherPssKb` | {'int': 1642} |
| `chromeProcesses` | {'int': 1642} |
| `chromeProfiles` | {'int': 1642} |
| `chromeRendererMaxPssKb` | {'int': 1642} |
| `chromeRendererPssKb` | {'int': 1642} |
| `chromeRenderers` | {'int': 1642} |
| `chromeTabs` | {'int': 1642} |
| `chromeTabsProbedProfiles` | {'int': 1642} |
| `chromeUtilityPssKb` | {'int': 1642} |
| `desktopPssKb` | {'int': 1642} |
| `hostPssKb` | {'int': 1642} |
| `kind` | {'str': 1642} |
| `memAvailableKb` | {'int': 1642} |
| `memTotalKb` | {'int': 1642} |
| `otherPssKb` | {'int': 1642} |
| `processes` | {'int': 1642} |
| `pssFallbackProcesses` | {'int': 1642} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
