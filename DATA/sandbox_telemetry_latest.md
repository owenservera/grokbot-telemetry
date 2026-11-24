# sandbox_telemetry_parse — 2026-11-24 05:16:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2144975 lines=4755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4740 |
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
| `chromeBrowserPssKb` | {'int': 4740} |
| `chromeGpuPssKb` | {'int': 4740} |
| `chromeOtherPssKb` | {'int': 4740} |
| `chromeProcesses` | {'int': 4740} |
| `chromeProfiles` | {'int': 4740} |
| `chromeRendererMaxPssKb` | {'int': 4740} |
| `chromeRendererPssKb` | {'int': 4740} |
| `chromeRenderers` | {'int': 4740} |
| `chromeTabs` | {'int': 4740} |
| `chromeTabsProbedProfiles` | {'int': 4740} |
| `chromeUtilityPssKb` | {'int': 4740} |
| `desktopPssKb` | {'int': 4740} |
| `hostPssKb` | {'int': 4740} |
| `kind` | {'str': 4740} |
| `memAvailableKb` | {'int': 4740} |
| `memTotalKb` | {'int': 4740} |
| `otherPssKb` | {'int': 4740} |
| `processes` | {'int': 4740} |
| `pssFallbackProcesses` | {'int': 4740} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
