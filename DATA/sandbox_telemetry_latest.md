# sandbox_telemetry_parse — 2026-11-25 20:40:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2915701 lines=6459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6444 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6444} |
| `chromeGpuPssKb` | {'int': 6444} |
| `chromeOtherPssKb` | {'int': 6444} |
| `chromeProcesses` | {'int': 6444} |
| `chromeProfiles` | {'int': 6444} |
| `chromeRendererMaxPssKb` | {'int': 6444} |
| `chromeRendererPssKb` | {'int': 6444} |
| `chromeRenderers` | {'int': 6444} |
| `chromeTabs` | {'int': 6444} |
| `chromeTabsProbedProfiles` | {'int': 6444} |
| `chromeUtilityPssKb` | {'int': 6444} |
| `desktopPssKb` | {'int': 6444} |
| `hostPssKb` | {'int': 6444} |
| `kind` | {'str': 6444} |
| `memAvailableKb` | {'int': 6444} |
| `memTotalKb` | {'int': 6444} |
| `otherPssKb` | {'int': 6444} |
| `processes` | {'int': 6444} |
| `pssFallbackProcesses` | {'int': 6444} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
