# sandbox_telemetry_parse — 2026-11-11 01:05:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1408766 lines=3121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3112 |
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
| `chromeBrowserPssKb` | {'int': 3112} |
| `chromeGpuPssKb` | {'int': 3112} |
| `chromeOtherPssKb` | {'int': 3112} |
| `chromeProcesses` | {'int': 3112} |
| `chromeProfiles` | {'int': 3112} |
| `chromeRendererMaxPssKb` | {'int': 3112} |
| `chromeRendererPssKb` | {'int': 3112} |
| `chromeRenderers` | {'int': 3112} |
| `chromeTabs` | {'int': 3112} |
| `chromeTabsProbedProfiles` | {'int': 3112} |
| `chromeUtilityPssKb` | {'int': 3112} |
| `desktopPssKb` | {'int': 3112} |
| `hostPssKb` | {'int': 3112} |
| `kind` | {'str': 3112} |
| `memAvailableKb` | {'int': 3112} |
| `memTotalKb` | {'int': 3112} |
| `otherPssKb` | {'int': 3112} |
| `processes` | {'int': 3112} |
| `pssFallbackProcesses` | {'int': 3112} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
