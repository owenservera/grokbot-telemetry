# sandbox_telemetry_parse — 2026-11-07 13:17:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=476983 lines=1062
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1053 |
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
| `chromeBrowserPssKb` | {'int': 1053} |
| `chromeGpuPssKb` | {'int': 1053} |
| `chromeOtherPssKb` | {'int': 1053} |
| `chromeProcesses` | {'int': 1053} |
| `chromeProfiles` | {'int': 1053} |
| `chromeRendererMaxPssKb` | {'int': 1053} |
| `chromeRendererPssKb` | {'int': 1053} |
| `chromeRenderers` | {'int': 1053} |
| `chromeTabs` | {'int': 1053} |
| `chromeTabsProbedProfiles` | {'int': 1053} |
| `chromeUtilityPssKb` | {'int': 1053} |
| `desktopPssKb` | {'int': 1053} |
| `hostPssKb` | {'int': 1053} |
| `kind` | {'str': 1053} |
| `memAvailableKb` | {'int': 1053} |
| `memTotalKb` | {'int': 1053} |
| `otherPssKb` | {'int': 1053} |
| `processes` | {'int': 1053} |
| `pssFallbackProcesses` | {'int': 1053} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
