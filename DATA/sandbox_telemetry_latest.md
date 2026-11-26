# sandbox_telemetry_parse — 2026-11-26 13:14:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3265394 lines=7232
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7217 |
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
| `chromeBrowserPssKb` | {'int': 7217} |
| `chromeGpuPssKb` | {'int': 7217} |
| `chromeOtherPssKb` | {'int': 7217} |
| `chromeProcesses` | {'int': 7217} |
| `chromeProfiles` | {'int': 7217} |
| `chromeRendererMaxPssKb` | {'int': 7217} |
| `chromeRendererPssKb` | {'int': 7217} |
| `chromeRenderers` | {'int': 7217} |
| `chromeTabs` | {'int': 7217} |
| `chromeTabsProbedProfiles` | {'int': 7217} |
| `chromeUtilityPssKb` | {'int': 7217} |
| `desktopPssKb` | {'int': 7217} |
| `hostPssKb` | {'int': 7217} |
| `kind` | {'str': 7217} |
| `memAvailableKb` | {'int': 7217} |
| `memTotalKb` | {'int': 7217} |
| `otherPssKb` | {'int': 7217} |
| `processes` | {'int': 7217} |
| `pssFallbackProcesses` | {'int': 7217} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
