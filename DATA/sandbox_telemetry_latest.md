# sandbox_telemetry_parse — 2026-11-10 01:39:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=930380 lines=2064
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2055 |
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
| `chromeBrowserPssKb` | {'int': 2055} |
| `chromeGpuPssKb` | {'int': 2055} |
| `chromeOtherPssKb` | {'int': 2055} |
| `chromeProcesses` | {'int': 2055} |
| `chromeProfiles` | {'int': 2055} |
| `chromeRendererMaxPssKb` | {'int': 2055} |
| `chromeRendererPssKb` | {'int': 2055} |
| `chromeRenderers` | {'int': 2055} |
| `chromeTabs` | {'int': 2055} |
| `chromeTabsProbedProfiles` | {'int': 2055} |
| `chromeUtilityPssKb` | {'int': 2055} |
| `desktopPssKb` | {'int': 2055} |
| `hostPssKb` | {'int': 2055} |
| `kind` | {'str': 2055} |
| `memAvailableKb` | {'int': 2055} |
| `memTotalKb` | {'int': 2055} |
| `otherPssKb` | {'int': 2055} |
| `processes` | {'int': 2055} |
| `pssFallbackProcesses` | {'int': 2055} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
