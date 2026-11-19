# sandbox_telemetry_parse — 2026-11-19 19:27:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1410532 lines=3128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3117 |
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
| `chromeBrowserPssKb` | {'int': 3117} |
| `chromeGpuPssKb` | {'int': 3117} |
| `chromeOtherPssKb` | {'int': 3117} |
| `chromeProcesses` | {'int': 3117} |
| `chromeProfiles` | {'int': 3117} |
| `chromeRendererMaxPssKb` | {'int': 3117} |
| `chromeRendererPssKb` | {'int': 3117} |
| `chromeRenderers` | {'int': 3117} |
| `chromeTabs` | {'int': 3117} |
| `chromeTabsProbedProfiles` | {'int': 3117} |
| `chromeUtilityPssKb` | {'int': 3117} |
| `desktopPssKb` | {'int': 3117} |
| `hostPssKb` | {'int': 3117} |
| `kind` | {'str': 3117} |
| `memAvailableKb` | {'int': 3117} |
| `memTotalKb` | {'int': 3117} |
| `otherPssKb` | {'int': 3117} |
| `processes` | {'int': 3117} |
| `pssFallbackProcesses` | {'int': 3117} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
