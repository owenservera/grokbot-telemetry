# sandbox_telemetry_parse — 2026-11-20 04:36:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1573318 lines=3488
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3477 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3477} |
| `chromeGpuPssKb` | {'int': 3477} |
| `chromeOtherPssKb` | {'int': 3477} |
| `chromeProcesses` | {'int': 3477} |
| `chromeProfiles` | {'int': 3477} |
| `chromeRendererMaxPssKb` | {'int': 3477} |
| `chromeRendererPssKb` | {'int': 3477} |
| `chromeRenderers` | {'int': 3477} |
| `chromeTabs` | {'int': 3477} |
| `chromeTabsProbedProfiles` | {'int': 3477} |
| `chromeUtilityPssKb` | {'int': 3477} |
| `desktopPssKb` | {'int': 3477} |
| `hostPssKb` | {'int': 3477} |
| `kind` | {'str': 3477} |
| `memAvailableKb` | {'int': 3477} |
| `memTotalKb` | {'int': 3477} |
| `otherPssKb` | {'int': 3477} |
| `processes` | {'int': 3477} |
| `pssFallbackProcesses` | {'int': 3477} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
