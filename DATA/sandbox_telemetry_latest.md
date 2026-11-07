# sandbox_telemetry_parse — 2026-11-07 15:26:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=516793 lines=1150
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1141 |
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
| `chromeBrowserPssKb` | {'int': 1141} |
| `chromeGpuPssKb` | {'int': 1141} |
| `chromeOtherPssKb` | {'int': 1141} |
| `chromeProcesses` | {'int': 1141} |
| `chromeProfiles` | {'int': 1141} |
| `chromeRendererMaxPssKb` | {'int': 1141} |
| `chromeRendererPssKb` | {'int': 1141} |
| `chromeRenderers` | {'int': 1141} |
| `chromeTabs` | {'int': 1141} |
| `chromeTabsProbedProfiles` | {'int': 1141} |
| `chromeUtilityPssKb` | {'int': 1141} |
| `desktopPssKb` | {'int': 1141} |
| `hostPssKb` | {'int': 1141} |
| `kind` | {'str': 1141} |
| `memAvailableKb` | {'int': 1141} |
| `memTotalKb` | {'int': 1141} |
| `otherPssKb` | {'int': 1141} |
| `processes` | {'int': 1141} |
| `pssFallbackProcesses` | {'int': 1141} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
