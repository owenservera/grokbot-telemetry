# sandbox_telemetry_parse — 2026-11-19 18:38:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1395602 lines=3095
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3084 |
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
| `chromeBrowserPssKb` | {'int': 3084} |
| `chromeGpuPssKb` | {'int': 3084} |
| `chromeOtherPssKb` | {'int': 3084} |
| `chromeProcesses` | {'int': 3084} |
| `chromeProfiles` | {'int': 3084} |
| `chromeRendererMaxPssKb` | {'int': 3084} |
| `chromeRendererPssKb` | {'int': 3084} |
| `chromeRenderers` | {'int': 3084} |
| `chromeTabs` | {'int': 3084} |
| `chromeTabsProbedProfiles` | {'int': 3084} |
| `chromeUtilityPssKb` | {'int': 3084} |
| `desktopPssKb` | {'int': 3084} |
| `hostPssKb` | {'int': 3084} |
| `kind` | {'str': 3084} |
| `memAvailableKb` | {'int': 3084} |
| `memTotalKb` | {'int': 3084} |
| `otherPssKb` | {'int': 3084} |
| `processes` | {'int': 3084} |
| `pssFallbackProcesses` | {'int': 3084} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
