# sandbox_telemetry_parse — 2026-11-26 10:50:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3217898 lines=7127
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7112 |
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
| `chromeBrowserPssKb` | {'int': 7112} |
| `chromeGpuPssKb` | {'int': 7112} |
| `chromeOtherPssKb` | {'int': 7112} |
| `chromeProcesses` | {'int': 7112} |
| `chromeProfiles` | {'int': 7112} |
| `chromeRendererMaxPssKb` | {'int': 7112} |
| `chromeRendererPssKb` | {'int': 7112} |
| `chromeRenderers` | {'int': 7112} |
| `chromeTabs` | {'int': 7112} |
| `chromeTabsProbedProfiles` | {'int': 7112} |
| `chromeUtilityPssKb` | {'int': 7112} |
| `desktopPssKb` | {'int': 7112} |
| `hostPssKb` | {'int': 7112} |
| `kind` | {'str': 7112} |
| `memAvailableKb` | {'int': 7112} |
| `memTotalKb` | {'int': 7112} |
| `otherPssKb` | {'int': 7112} |
| `processes` | {'int': 7112} |
| `pssFallbackProcesses` | {'int': 7112} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
