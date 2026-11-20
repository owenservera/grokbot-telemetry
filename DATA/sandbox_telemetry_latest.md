# sandbox_telemetry_parse — 2026-11-20 08:32:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1639772 lines=3635
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3624 |
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
| `chromeBrowserPssKb` | {'int': 3624} |
| `chromeGpuPssKb` | {'int': 3624} |
| `chromeOtherPssKb` | {'int': 3624} |
| `chromeProcesses` | {'int': 3624} |
| `chromeProfiles` | {'int': 3624} |
| `chromeRendererMaxPssKb` | {'int': 3624} |
| `chromeRendererPssKb` | {'int': 3624} |
| `chromeRenderers` | {'int': 3624} |
| `chromeTabs` | {'int': 3624} |
| `chromeTabsProbedProfiles` | {'int': 3624} |
| `chromeUtilityPssKb` | {'int': 3624} |
| `desktopPssKb` | {'int': 3624} |
| `hostPssKb` | {'int': 3624} |
| `kind` | {'str': 3624} |
| `memAvailableKb` | {'int': 3624} |
| `memTotalKb` | {'int': 3624} |
| `otherPssKb` | {'int': 3624} |
| `processes` | {'int': 3624} |
| `pssFallbackProcesses` | {'int': 3624} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
