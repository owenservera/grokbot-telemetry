# sandbox_telemetry_parse — 2026-11-12 19:53:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2301214 lines=5093
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5084 |
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
| `chromeBrowserPssKb` | {'int': 5084} |
| `chromeGpuPssKb` | {'int': 5084} |
| `chromeOtherPssKb` | {'int': 5084} |
| `chromeProcesses` | {'int': 5084} |
| `chromeProfiles` | {'int': 5084} |
| `chromeRendererMaxPssKb` | {'int': 5084} |
| `chromeRendererPssKb` | {'int': 5084} |
| `chromeRenderers` | {'int': 5084} |
| `chromeTabs` | {'int': 5084} |
| `chromeTabsProbedProfiles` | {'int': 5084} |
| `chromeUtilityPssKb` | {'int': 5084} |
| `desktopPssKb` | {'int': 5084} |
| `hostPssKb` | {'int': 5084} |
| `kind` | {'str': 5084} |
| `memAvailableKb` | {'int': 5084} |
| `memTotalKb` | {'int': 5084} |
| `otherPssKb` | {'int': 5084} |
| `processes` | {'int': 5084} |
| `pssFallbackProcesses` | {'int': 5084} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
