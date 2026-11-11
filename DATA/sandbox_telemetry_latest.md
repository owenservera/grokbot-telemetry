# sandbox_telemetry_parse — 2026-11-11 04:45:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1476126 lines=3270
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3261 |
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
| `chromeBrowserPssKb` | {'int': 3261} |
| `chromeGpuPssKb` | {'int': 3261} |
| `chromeOtherPssKb` | {'int': 3261} |
| `chromeProcesses` | {'int': 3261} |
| `chromeProfiles` | {'int': 3261} |
| `chromeRendererMaxPssKb` | {'int': 3261} |
| `chromeRendererPssKb` | {'int': 3261} |
| `chromeRenderers` | {'int': 3261} |
| `chromeTabs` | {'int': 3261} |
| `chromeTabsProbedProfiles` | {'int': 3261} |
| `chromeUtilityPssKb` | {'int': 3261} |
| `desktopPssKb` | {'int': 3261} |
| `hostPssKb` | {'int': 3261} |
| `kind` | {'str': 3261} |
| `memAvailableKb` | {'int': 3261} |
| `memTotalKb` | {'int': 3261} |
| `otherPssKb` | {'int': 3261} |
| `processes` | {'int': 3261} |
| `pssFallbackProcesses` | {'int': 3261} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
