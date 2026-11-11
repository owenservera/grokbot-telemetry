# sandbox_telemetry_parse — 2026-11-11 13:52:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1660253 lines=3677
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3668 |
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
| `chromeBrowserPssKb` | {'int': 3668} |
| `chromeGpuPssKb` | {'int': 3668} |
| `chromeOtherPssKb` | {'int': 3668} |
| `chromeProcesses` | {'int': 3668} |
| `chromeProfiles` | {'int': 3668} |
| `chromeRendererMaxPssKb` | {'int': 3668} |
| `chromeRendererPssKb` | {'int': 3668} |
| `chromeRenderers` | {'int': 3668} |
| `chromeTabs` | {'int': 3668} |
| `chromeTabsProbedProfiles` | {'int': 3668} |
| `chromeUtilityPssKb` | {'int': 3668} |
| `desktopPssKb` | {'int': 3668} |
| `hostPssKb` | {'int': 3668} |
| `kind` | {'str': 3668} |
| `memAvailableKb` | {'int': 3668} |
| `memTotalKb` | {'int': 3668} |
| `otherPssKb` | {'int': 3668} |
| `processes` | {'int': 3668} |
| `pssFallbackProcesses` | {'int': 3668} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
