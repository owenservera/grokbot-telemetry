# sandbox_telemetry_parse — 2026-11-11 11:40:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1611377 lines=3569
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3560 |
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
| `chromeBrowserPssKb` | {'int': 3560} |
| `chromeGpuPssKb` | {'int': 3560} |
| `chromeOtherPssKb` | {'int': 3560} |
| `chromeProcesses` | {'int': 3560} |
| `chromeProfiles` | {'int': 3560} |
| `chromeRendererMaxPssKb` | {'int': 3560} |
| `chromeRendererPssKb` | {'int': 3560} |
| `chromeRenderers` | {'int': 3560} |
| `chromeTabs` | {'int': 3560} |
| `chromeTabsProbedProfiles` | {'int': 3560} |
| `chromeUtilityPssKb` | {'int': 3560} |
| `desktopPssKb` | {'int': 3560} |
| `hostPssKb` | {'int': 3560} |
| `kind` | {'str': 3560} |
| `memAvailableKb` | {'int': 3560} |
| `memTotalKb` | {'int': 3560} |
| `otherPssKb` | {'int': 3560} |
| `processes` | {'int': 3560} |
| `pssFallbackProcesses` | {'int': 3560} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
