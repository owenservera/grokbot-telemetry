# sandbox_telemetry_parse — 2026-11-19 19:48:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1416416 lines=3141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3130 |
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
| `chromeBrowserPssKb` | {'int': 3130} |
| `chromeGpuPssKb` | {'int': 3130} |
| `chromeOtherPssKb` | {'int': 3130} |
| `chromeProcesses` | {'int': 3130} |
| `chromeProfiles` | {'int': 3130} |
| `chromeRendererMaxPssKb` | {'int': 3130} |
| `chromeRendererPssKb` | {'int': 3130} |
| `chromeRenderers` | {'int': 3130} |
| `chromeTabs` | {'int': 3130} |
| `chromeTabsProbedProfiles` | {'int': 3130} |
| `chromeUtilityPssKb` | {'int': 3130} |
| `desktopPssKb` | {'int': 3130} |
| `hostPssKb` | {'int': 3130} |
| `kind` | {'str': 3130} |
| `memAvailableKb` | {'int': 3130} |
| `memTotalKb` | {'int': 3130} |
| `otherPssKb` | {'int': 3130} |
| `processes` | {'int': 3130} |
| `pssFallbackProcesses` | {'int': 3130} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
