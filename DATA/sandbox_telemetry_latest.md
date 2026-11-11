# sandbox_telemetry_parse — 2026-11-11 23:47:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1874329 lines=4150
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4141 |
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
| `chromeBrowserPssKb` | {'int': 4141} |
| `chromeGpuPssKb` | {'int': 4141} |
| `chromeOtherPssKb` | {'int': 4141} |
| `chromeProcesses` | {'int': 4141} |
| `chromeProfiles` | {'int': 4141} |
| `chromeRendererMaxPssKb` | {'int': 4141} |
| `chromeRendererPssKb` | {'int': 4141} |
| `chromeRenderers` | {'int': 4141} |
| `chromeTabs` | {'int': 4141} |
| `chromeTabsProbedProfiles` | {'int': 4141} |
| `chromeUtilityPssKb` | {'int': 4141} |
| `desktopPssKb` | {'int': 4141} |
| `hostPssKb` | {'int': 4141} |
| `kind` | {'str': 4141} |
| `memAvailableKb` | {'int': 4141} |
| `memTotalKb` | {'int': 4141} |
| `otherPssKb` | {'int': 4141} |
| `processes` | {'int': 4141} |
| `pssFallbackProcesses` | {'int': 4141} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
