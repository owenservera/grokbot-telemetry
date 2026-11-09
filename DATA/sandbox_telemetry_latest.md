# sandbox_telemetry_parse — 2026-11-09 11:49:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=642118 lines=1427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1418 |
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
| `chromeBrowserPssKb` | {'int': 1418} |
| `chromeGpuPssKb` | {'int': 1418} |
| `chromeOtherPssKb` | {'int': 1418} |
| `chromeProcesses` | {'int': 1418} |
| `chromeProfiles` | {'int': 1418} |
| `chromeRendererMaxPssKb` | {'int': 1418} |
| `chromeRendererPssKb` | {'int': 1418} |
| `chromeRenderers` | {'int': 1418} |
| `chromeTabs` | {'int': 1418} |
| `chromeTabsProbedProfiles` | {'int': 1418} |
| `chromeUtilityPssKb` | {'int': 1418} |
| `desktopPssKb` | {'int': 1418} |
| `hostPssKb` | {'int': 1418} |
| `kind` | {'str': 1418} |
| `memAvailableKb` | {'int': 1418} |
| `memTotalKb` | {'int': 1418} |
| `otherPssKb` | {'int': 1418} |
| `processes` | {'int': 1418} |
| `pssFallbackProcesses` | {'int': 1418} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
