# sandbox_telemetry_parse — 2026-11-19 19:24:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1409176 lines=3125
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3114 |
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
| `chromeBrowserPssKb` | {'int': 3114} |
| `chromeGpuPssKb` | {'int': 3114} |
| `chromeOtherPssKb` | {'int': 3114} |
| `chromeProcesses` | {'int': 3114} |
| `chromeProfiles` | {'int': 3114} |
| `chromeRendererMaxPssKb` | {'int': 3114} |
| `chromeRendererPssKb` | {'int': 3114} |
| `chromeRenderers` | {'int': 3114} |
| `chromeTabs` | {'int': 3114} |
| `chromeTabsProbedProfiles` | {'int': 3114} |
| `chromeUtilityPssKb` | {'int': 3114} |
| `desktopPssKb` | {'int': 3114} |
| `hostPssKb` | {'int': 3114} |
| `kind` | {'str': 3114} |
| `memAvailableKb` | {'int': 3114} |
| `memTotalKb` | {'int': 3114} |
| `otherPssKb` | {'int': 3114} |
| `processes` | {'int': 3114} |
| `pssFallbackProcesses` | {'int': 3114} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
