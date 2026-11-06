# sandbox_telemetry_parse — 2026-11-06 19:50:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=140506 lines=318
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 309 |
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
| `chromeBrowserPssKb` | {'int': 309} |
| `chromeGpuPssKb` | {'int': 309} |
| `chromeOtherPssKb` | {'int': 309} |
| `chromeProcesses` | {'int': 309} |
| `chromeProfiles` | {'int': 309} |
| `chromeRendererMaxPssKb` | {'int': 309} |
| `chromeRendererPssKb` | {'int': 309} |
| `chromeRenderers` | {'int': 309} |
| `chromeTabs` | {'int': 309} |
| `chromeTabsProbedProfiles` | {'int': 309} |
| `chromeUtilityPssKb` | {'int': 309} |
| `desktopPssKb` | {'int': 309} |
| `hostPssKb` | {'int': 309} |
| `kind` | {'str': 309} |
| `memAvailableKb` | {'int': 309} |
| `memTotalKb` | {'int': 309} |
| `otherPssKb` | {'int': 309} |
| `processes` | {'int': 309} |
| `pssFallbackProcesses` | {'int': 309} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
