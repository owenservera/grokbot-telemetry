# sandbox_telemetry_parse — 2026-11-25 16:20:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2828882 lines=6267
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6252 |
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
| `chromeBrowserPssKb` | {'int': 6252} |
| `chromeGpuPssKb` | {'int': 6252} |
| `chromeOtherPssKb` | {'int': 6252} |
| `chromeProcesses` | {'int': 6252} |
| `chromeProfiles` | {'int': 6252} |
| `chromeRendererMaxPssKb` | {'int': 6252} |
| `chromeRendererPssKb` | {'int': 6252} |
| `chromeRenderers` | {'int': 6252} |
| `chromeTabs` | {'int': 6252} |
| `chromeTabsProbedProfiles` | {'int': 6252} |
| `chromeUtilityPssKb` | {'int': 6252} |
| `desktopPssKb` | {'int': 6252} |
| `hostPssKb` | {'int': 6252} |
| `kind` | {'str': 6252} |
| `memAvailableKb` | {'int': 6252} |
| `memTotalKb` | {'int': 6252} |
| `otherPssKb` | {'int': 6252} |
| `processes` | {'int': 6252} |
| `pssFallbackProcesses` | {'int': 6252} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
