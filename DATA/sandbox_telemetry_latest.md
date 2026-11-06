# sandbox_telemetry_parse — 2026-11-06 12:39:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=14116 lines=37
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 30 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 30} |
| `chromeGpuPssKb` | {'int': 30} |
| `chromeOtherPssKb` | {'int': 30} |
| `chromeProcesses` | {'int': 30} |
| `chromeProfiles` | {'int': 30} |
| `chromeRendererMaxPssKb` | {'int': 30} |
| `chromeRendererPssKb` | {'int': 30} |
| `chromeRenderers` | {'int': 30} |
| `chromeTabs` | {'int': 30} |
| `chromeTabsProbedProfiles` | {'int': 30} |
| `chromeUtilityPssKb` | {'int': 30} |
| `desktopPssKb` | {'int': 30} |
| `hostPssKb` | {'int': 30} |
| `kind` | {'str': 30} |
| `memAvailableKb` | {'int': 30} |
| `memTotalKb` | {'int': 30} |
| `otherPssKb` | {'int': 30} |
| `processes` | {'int': 30} |
| `pssFallbackProcesses` | {'int': 30} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
