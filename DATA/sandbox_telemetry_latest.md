# sandbox_telemetry_parse — 2026-11-19 04:48:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1123996 lines=2493
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2484 |
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
| `chromeBrowserPssKb` | {'int': 2484} |
| `chromeGpuPssKb` | {'int': 2484} |
| `chromeOtherPssKb` | {'int': 2484} |
| `chromeProcesses` | {'int': 2484} |
| `chromeProfiles` | {'int': 2484} |
| `chromeRendererMaxPssKb` | {'int': 2484} |
| `chromeRendererPssKb` | {'int': 2484} |
| `chromeRenderers` | {'int': 2484} |
| `chromeTabs` | {'int': 2484} |
| `chromeTabsProbedProfiles` | {'int': 2484} |
| `chromeUtilityPssKb` | {'int': 2484} |
| `desktopPssKb` | {'int': 2484} |
| `hostPssKb` | {'int': 2484} |
| `kind` | {'str': 2484} |
| `memAvailableKb` | {'int': 2484} |
| `memTotalKb` | {'int': 2484} |
| `otherPssKb` | {'int': 2484} |
| `processes` | {'int': 2484} |
| `pssFallbackProcesses` | {'int': 2484} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
