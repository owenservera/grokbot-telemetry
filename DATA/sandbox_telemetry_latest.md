# sandbox_telemetry_parse — 2026-11-26 03:28:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3052284 lines=6761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6746 |
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
| `chromeBrowserPssKb` | {'int': 6746} |
| `chromeGpuPssKb` | {'int': 6746} |
| `chromeOtherPssKb` | {'int': 6746} |
| `chromeProcesses` | {'int': 6746} |
| `chromeProfiles` | {'int': 6746} |
| `chromeRendererMaxPssKb` | {'int': 6746} |
| `chromeRendererPssKb` | {'int': 6746} |
| `chromeRenderers` | {'int': 6746} |
| `chromeTabs` | {'int': 6746} |
| `chromeTabsProbedProfiles` | {'int': 6746} |
| `chromeUtilityPssKb` | {'int': 6746} |
| `desktopPssKb` | {'int': 6746} |
| `hostPssKb` | {'int': 6746} |
| `kind` | {'str': 6746} |
| `memAvailableKb` | {'int': 6746} |
| `memTotalKb` | {'int': 6746} |
| `otherPssKb` | {'int': 6746} |
| `processes` | {'int': 6746} |
| `pssFallbackProcesses` | {'int': 6746} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
