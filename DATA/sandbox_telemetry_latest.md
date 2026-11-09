# sandbox_telemetry_parse — 2026-11-09 20:43:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=831336 lines=1845
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1836 |
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
| `chromeBrowserPssKb` | {'int': 1836} |
| `chromeGpuPssKb` | {'int': 1836} |
| `chromeOtherPssKb` | {'int': 1836} |
| `chromeProcesses` | {'int': 1836} |
| `chromeProfiles` | {'int': 1836} |
| `chromeRendererMaxPssKb` | {'int': 1836} |
| `chromeRendererPssKb` | {'int': 1836} |
| `chromeRenderers` | {'int': 1836} |
| `chromeTabs` | {'int': 1836} |
| `chromeTabsProbedProfiles` | {'int': 1836} |
| `chromeUtilityPssKb` | {'int': 1836} |
| `desktopPssKb` | {'int': 1836} |
| `hostPssKb` | {'int': 1836} |
| `kind` | {'str': 1836} |
| `memAvailableKb` | {'int': 1836} |
| `memTotalKb` | {'int': 1836} |
| `otherPssKb` | {'int': 1836} |
| `processes` | {'int': 1836} |
| `pssFallbackProcesses` | {'int': 1836} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
