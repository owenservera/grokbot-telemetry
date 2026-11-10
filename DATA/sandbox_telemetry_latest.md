# sandbox_telemetry_parse — 2026-11-10 21:23:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1329125 lines=2945
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2936 |
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
| `chromeBrowserPssKb` | {'int': 2936} |
| `chromeGpuPssKb` | {'int': 2936} |
| `chromeOtherPssKb` | {'int': 2936} |
| `chromeProcesses` | {'int': 2936} |
| `chromeProfiles` | {'int': 2936} |
| `chromeRendererMaxPssKb` | {'int': 2936} |
| `chromeRendererPssKb` | {'int': 2936} |
| `chromeRenderers` | {'int': 2936} |
| `chromeTabs` | {'int': 2936} |
| `chromeTabsProbedProfiles` | {'int': 2936} |
| `chromeUtilityPssKb` | {'int': 2936} |
| `desktopPssKb` | {'int': 2936} |
| `hostPssKb` | {'int': 2936} |
| `kind` | {'str': 2936} |
| `memAvailableKb` | {'int': 2936} |
| `memTotalKb` | {'int': 2936} |
| `otherPssKb` | {'int': 2936} |
| `processes` | {'int': 2936} |
| `pssFallbackProcesses` | {'int': 2936} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
