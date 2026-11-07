# sandbox_telemetry_parse — 2026-11-07 12:21:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=458903 lines=1022
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1013 |
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
| `chromeBrowserPssKb` | {'int': 1013} |
| `chromeGpuPssKb` | {'int': 1013} |
| `chromeOtherPssKb` | {'int': 1013} |
| `chromeProcesses` | {'int': 1013} |
| `chromeProfiles` | {'int': 1013} |
| `chromeRendererMaxPssKb` | {'int': 1013} |
| `chromeRendererPssKb` | {'int': 1013} |
| `chromeRenderers` | {'int': 1013} |
| `chromeTabs` | {'int': 1013} |
| `chromeTabsProbedProfiles` | {'int': 1013} |
| `chromeUtilityPssKb` | {'int': 1013} |
| `desktopPssKb` | {'int': 1013} |
| `hostPssKb` | {'int': 1013} |
| `kind` | {'str': 1013} |
| `memAvailableKb` | {'int': 1013} |
| `memTotalKb` | {'int': 1013} |
| `otherPssKb` | {'int': 1013} |
| `processes` | {'int': 1013} |
| `pssFallbackProcesses` | {'int': 1013} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
