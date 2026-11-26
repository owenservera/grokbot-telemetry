# sandbox_telemetry_parse — 2026-11-26 19:23:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=51295 lines=120
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 112 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 112} |
| `chromeGpuPssKb` | {'int': 112} |
| `chromeOtherPssKb` | {'int': 112} |
| `chromeProcesses` | {'int': 112} |
| `chromeProfiles` | {'int': 112} |
| `chromeRendererMaxPssKb` | {'int': 112} |
| `chromeRendererPssKb` | {'int': 112} |
| `chromeRenderers` | {'int': 112} |
| `chromeTabs` | {'int': 112} |
| `chromeTabsProbedProfiles` | {'int': 112} |
| `chromeUtilityPssKb` | {'int': 112} |
| `desktopPssKb` | {'int': 112} |
| `hostPssKb` | {'int': 112} |
| `kind` | {'str': 112} |
| `memAvailableKb` | {'int': 112} |
| `memTotalKb` | {'int': 112} |
| `otherPssKb` | {'int': 112} |
| `processes` | {'int': 112} |
| `pssFallbackProcesses` | {'int': 112} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
