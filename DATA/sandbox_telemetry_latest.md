# sandbox_telemetry_parse — 2026-11-10 15:01:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1189678 lines=2637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2628 |
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
| `chromeBrowserPssKb` | {'int': 2628} |
| `chromeGpuPssKb` | {'int': 2628} |
| `chromeOtherPssKb` | {'int': 2628} |
| `chromeProcesses` | {'int': 2628} |
| `chromeProfiles` | {'int': 2628} |
| `chromeRendererMaxPssKb` | {'int': 2628} |
| `chromeRendererPssKb` | {'int': 2628} |
| `chromeRenderers` | {'int': 2628} |
| `chromeTabs` | {'int': 2628} |
| `chromeTabsProbedProfiles` | {'int': 2628} |
| `chromeUtilityPssKb` | {'int': 2628} |
| `desktopPssKb` | {'int': 2628} |
| `hostPssKb` | {'int': 2628} |
| `kind` | {'str': 2628} |
| `memAvailableKb` | {'int': 2628} |
| `memTotalKb` | {'int': 2628} |
| `otherPssKb` | {'int': 2628} |
| `processes` | {'int': 2628} |
| `pssFallbackProcesses` | {'int': 2628} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
