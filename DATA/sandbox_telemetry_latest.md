# sandbox_telemetry_parse — 2026-11-11 06:10:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1502356 lines=3328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3319 |
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
| `chromeBrowserPssKb` | {'int': 3319} |
| `chromeGpuPssKb` | {'int': 3319} |
| `chromeOtherPssKb` | {'int': 3319} |
| `chromeProcesses` | {'int': 3319} |
| `chromeProfiles` | {'int': 3319} |
| `chromeRendererMaxPssKb` | {'int': 3319} |
| `chromeRendererPssKb` | {'int': 3319} |
| `chromeRenderers` | {'int': 3319} |
| `chromeTabs` | {'int': 3319} |
| `chromeTabsProbedProfiles` | {'int': 3319} |
| `chromeUtilityPssKb` | {'int': 3319} |
| `desktopPssKb` | {'int': 3319} |
| `hostPssKb` | {'int': 3319} |
| `kind` | {'str': 3319} |
| `memAvailableKb` | {'int': 3319} |
| `memTotalKb` | {'int': 3319} |
| `otherPssKb` | {'int': 3319} |
| `processes` | {'int': 3319} |
| `pssFallbackProcesses` | {'int': 3319} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
