# sandbox_telemetry_parse — 2026-11-27 21:26:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=597373 lines=1327
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1319 |
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
| `chromeBrowserPssKb` | {'int': 1319} |
| `chromeGpuPssKb` | {'int': 1319} |
| `chromeOtherPssKb` | {'int': 1319} |
| `chromeProcesses` | {'int': 1319} |
| `chromeProfiles` | {'int': 1319} |
| `chromeRendererMaxPssKb` | {'int': 1319} |
| `chromeRendererPssKb` | {'int': 1319} |
| `chromeRenderers` | {'int': 1319} |
| `chromeTabs` | {'int': 1319} |
| `chromeTabsProbedProfiles` | {'int': 1319} |
| `chromeUtilityPssKb` | {'int': 1319} |
| `desktopPssKb` | {'int': 1319} |
| `hostPssKb` | {'int': 1319} |
| `kind` | {'str': 1319} |
| `memAvailableKb` | {'int': 1319} |
| `memTotalKb` | {'int': 1319} |
| `otherPssKb` | {'int': 1319} |
| `processes` | {'int': 1319} |
| `pssFallbackProcesses` | {'int': 1319} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
