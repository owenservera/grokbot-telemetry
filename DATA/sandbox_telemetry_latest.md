# sandbox_telemetry_parse — 2026-11-16 16:20:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=39455 lines=93
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 86 |
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
| `chromeBrowserPssKb` | {'int': 86} |
| `chromeGpuPssKb` | {'int': 86} |
| `chromeOtherPssKb` | {'int': 86} |
| `chromeProcesses` | {'int': 86} |
| `chromeProfiles` | {'int': 86} |
| `chromeRendererMaxPssKb` | {'int': 86} |
| `chromeRendererPssKb` | {'int': 86} |
| `chromeRenderers` | {'int': 86} |
| `chromeTabs` | {'int': 86} |
| `chromeTabsProbedProfiles` | {'int': 86} |
| `chromeUtilityPssKb` | {'int': 86} |
| `desktopPssKb` | {'int': 86} |
| `hostPssKb` | {'int': 86} |
| `kind` | {'str': 86} |
| `memAvailableKb` | {'int': 86} |
| `memTotalKb` | {'int': 86} |
| `otherPssKb` | {'int': 86} |
| `processes` | {'int': 86} |
| `pssFallbackProcesses` | {'int': 86} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
