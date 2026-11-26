# sandbox_telemetry_parse — 2026-11-26 06:06:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3109746 lines=6888
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6873 |
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
| `chromeBrowserPssKb` | {'int': 6873} |
| `chromeGpuPssKb` | {'int': 6873} |
| `chromeOtherPssKb` | {'int': 6873} |
| `chromeProcesses` | {'int': 6873} |
| `chromeProfiles` | {'int': 6873} |
| `chromeRendererMaxPssKb` | {'int': 6873} |
| `chromeRendererPssKb` | {'int': 6873} |
| `chromeRenderers` | {'int': 6873} |
| `chromeTabs` | {'int': 6873} |
| `chromeTabsProbedProfiles` | {'int': 6873} |
| `chromeUtilityPssKb` | {'int': 6873} |
| `desktopPssKb` | {'int': 6873} |
| `hostPssKb` | {'int': 6873} |
| `kind` | {'str': 6873} |
| `memAvailableKb` | {'int': 6873} |
| `memTotalKb` | {'int': 6873} |
| `otherPssKb` | {'int': 6873} |
| `processes` | {'int': 6873} |
| `pssFallbackProcesses` | {'int': 6873} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
