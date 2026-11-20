# sandbox_telemetry_parse — 2026-11-20 04:17:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1569702 lines=3480
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3469 |
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
| `chromeBrowserPssKb` | {'int': 3469} |
| `chromeGpuPssKb` | {'int': 3469} |
| `chromeOtherPssKb` | {'int': 3469} |
| `chromeProcesses` | {'int': 3469} |
| `chromeProfiles` | {'int': 3469} |
| `chromeRendererMaxPssKb` | {'int': 3469} |
| `chromeRendererPssKb` | {'int': 3469} |
| `chromeRenderers` | {'int': 3469} |
| `chromeTabs` | {'int': 3469} |
| `chromeTabsProbedProfiles` | {'int': 3469} |
| `chromeUtilityPssKb` | {'int': 3469} |
| `desktopPssKb` | {'int': 3469} |
| `hostPssKb` | {'int': 3469} |
| `kind` | {'str': 3469} |
| `memAvailableKb` | {'int': 3469} |
| `memTotalKb` | {'int': 3469} |
| `otherPssKb` | {'int': 3469} |
| `processes` | {'int': 3469} |
| `pssFallbackProcesses` | {'int': 3469} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
