# sandbox_telemetry_parse — 2026-11-11 12:03:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1620435 lines=3589
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3580 |
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
| `chromeBrowserPssKb` | {'int': 3580} |
| `chromeGpuPssKb` | {'int': 3580} |
| `chromeOtherPssKb` | {'int': 3580} |
| `chromeProcesses` | {'int': 3580} |
| `chromeProfiles` | {'int': 3580} |
| `chromeRendererMaxPssKb` | {'int': 3580} |
| `chromeRendererPssKb` | {'int': 3580} |
| `chromeRenderers` | {'int': 3580} |
| `chromeTabs` | {'int': 3580} |
| `chromeTabsProbedProfiles` | {'int': 3580} |
| `chromeUtilityPssKb` | {'int': 3580} |
| `desktopPssKb` | {'int': 3580} |
| `hostPssKb` | {'int': 3580} |
| `kind` | {'str': 3580} |
| `memAvailableKb` | {'int': 3580} |
| `memTotalKb` | {'int': 3580} |
| `otherPssKb` | {'int': 3580} |
| `processes` | {'int': 3580} |
| `pssFallbackProcesses` | {'int': 3580} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
