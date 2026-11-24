# sandbox_telemetry_parse — 2026-11-24 13:11:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2296452 lines=5090
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5075 |
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
| `chromeBrowserPssKb` | {'int': 5075} |
| `chromeGpuPssKb` | {'int': 5075} |
| `chromeOtherPssKb` | {'int': 5075} |
| `chromeProcesses` | {'int': 5075} |
| `chromeProfiles` | {'int': 5075} |
| `chromeRendererMaxPssKb` | {'int': 5075} |
| `chromeRendererPssKb` | {'int': 5075} |
| `chromeRenderers` | {'int': 5075} |
| `chromeTabs` | {'int': 5075} |
| `chromeTabsProbedProfiles` | {'int': 5075} |
| `chromeUtilityPssKb` | {'int': 5075} |
| `desktopPssKb` | {'int': 5075} |
| `hostPssKb` | {'int': 5075} |
| `kind` | {'str': 5075} |
| `memAvailableKb` | {'int': 5075} |
| `memTotalKb` | {'int': 5075} |
| `otherPssKb` | {'int': 5075} |
| `processes` | {'int': 5075} |
| `pssFallbackProcesses` | {'int': 5075} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
