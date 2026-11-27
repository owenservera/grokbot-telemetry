# sandbox_telemetry_parse — 2026-11-27 04:57:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=246688 lines=552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 544 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 544} |
| `chromeGpuPssKb` | {'int': 544} |
| `chromeOtherPssKb` | {'int': 544} |
| `chromeProcesses` | {'int': 544} |
| `chromeProfiles` | {'int': 544} |
| `chromeRendererMaxPssKb` | {'int': 544} |
| `chromeRendererPssKb` | {'int': 544} |
| `chromeRenderers` | {'int': 544} |
| `chromeTabs` | {'int': 544} |
| `chromeTabsProbedProfiles` | {'int': 544} |
| `chromeUtilityPssKb` | {'int': 544} |
| `desktopPssKb` | {'int': 544} |
| `hostPssKb` | {'int': 544} |
| `kind` | {'str': 544} |
| `memAvailableKb` | {'int': 544} |
| `memTotalKb` | {'int': 544} |
| `otherPssKb` | {'int': 544} |
| `processes` | {'int': 544} |
| `pssFallbackProcesses` | {'int': 544} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
