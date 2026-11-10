# sandbox_telemetry_parse — 2026-11-10 06:27:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1019493 lines=2261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2252 |
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
| `chromeBrowserPssKb` | {'int': 2252} |
| `chromeGpuPssKb` | {'int': 2252} |
| `chromeOtherPssKb` | {'int': 2252} |
| `chromeProcesses` | {'int': 2252} |
| `chromeProfiles` | {'int': 2252} |
| `chromeRendererMaxPssKb` | {'int': 2252} |
| `chromeRendererPssKb` | {'int': 2252} |
| `chromeRenderers` | {'int': 2252} |
| `chromeTabs` | {'int': 2252} |
| `chromeTabsProbedProfiles` | {'int': 2252} |
| `chromeUtilityPssKb` | {'int': 2252} |
| `desktopPssKb` | {'int': 2252} |
| `hostPssKb` | {'int': 2252} |
| `kind` | {'str': 2252} |
| `memAvailableKb` | {'int': 2252} |
| `memTotalKb` | {'int': 2252} |
| `otherPssKb` | {'int': 2252} |
| `processes` | {'int': 2252} |
| `pssFallbackProcesses` | {'int': 2252} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
