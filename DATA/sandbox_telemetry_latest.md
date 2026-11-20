# sandbox_telemetry_parse — 2026-11-20 05:20:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1585070 lines=3514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3503 |
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
| `chromeBrowserPssKb` | {'int': 3503} |
| `chromeGpuPssKb` | {'int': 3503} |
| `chromeOtherPssKb` | {'int': 3503} |
| `chromeProcesses` | {'int': 3503} |
| `chromeProfiles` | {'int': 3503} |
| `chromeRendererMaxPssKb` | {'int': 3503} |
| `chromeRendererPssKb` | {'int': 3503} |
| `chromeRenderers` | {'int': 3503} |
| `chromeTabs` | {'int': 3503} |
| `chromeTabsProbedProfiles` | {'int': 3503} |
| `chromeUtilityPssKb` | {'int': 3503} |
| `desktopPssKb` | {'int': 3503} |
| `hostPssKb` | {'int': 3503} |
| `kind` | {'str': 3503} |
| `memAvailableKb` | {'int': 3503} |
| `memTotalKb` | {'int': 3503} |
| `otherPssKb` | {'int': 3503} |
| `processes` | {'int': 3503} |
| `pssFallbackProcesses` | {'int': 3503} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
