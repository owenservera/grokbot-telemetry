# sandbox_telemetry_parse — 2026-11-28 20:39:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1049902 lines=2327
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2319 |
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
| `chromeBrowserPssKb` | {'int': 2319} |
| `chromeGpuPssKb` | {'int': 2319} |
| `chromeOtherPssKb` | {'int': 2319} |
| `chromeProcesses` | {'int': 2319} |
| `chromeProfiles` | {'int': 2319} |
| `chromeRendererMaxPssKb` | {'int': 2319} |
| `chromeRendererPssKb` | {'int': 2319} |
| `chromeRenderers` | {'int': 2319} |
| `chromeTabs` | {'int': 2319} |
| `chromeTabsProbedProfiles` | {'int': 2319} |
| `chromeUtilityPssKb` | {'int': 2319} |
| `desktopPssKb` | {'int': 2319} |
| `hostPssKb` | {'int': 2319} |
| `kind` | {'str': 2319} |
| `memAvailableKb` | {'int': 2319} |
| `memTotalKb` | {'int': 2319} |
| `otherPssKb` | {'int': 2319} |
| `processes` | {'int': 2319} |
| `pssFallbackProcesses` | {'int': 2319} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
