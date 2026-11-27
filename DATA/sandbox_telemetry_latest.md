# sandbox_telemetry_parse — 2026-11-27 19:46:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=567061 lines=1260
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1252 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1252} |
| `chromeGpuPssKb` | {'int': 1252} |
| `chromeOtherPssKb` | {'int': 1252} |
| `chromeProcesses` | {'int': 1252} |
| `chromeProfiles` | {'int': 1252} |
| `chromeRendererMaxPssKb` | {'int': 1252} |
| `chromeRendererPssKb` | {'int': 1252} |
| `chromeRenderers` | {'int': 1252} |
| `chromeTabs` | {'int': 1252} |
| `chromeTabsProbedProfiles` | {'int': 1252} |
| `chromeUtilityPssKb` | {'int': 1252} |
| `desktopPssKb` | {'int': 1252} |
| `hostPssKb` | {'int': 1252} |
| `kind` | {'str': 1252} |
| `memAvailableKb` | {'int': 1252} |
| `memTotalKb` | {'int': 1252} |
| `otherPssKb` | {'int': 1252} |
| `processes` | {'int': 1252} |
| `pssFallbackProcesses` | {'int': 1252} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
