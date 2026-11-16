# sandbox_telemetry_parse — 2026-11-16 22:33:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=144815 lines=326
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 319 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 319} |
| `chromeGpuPssKb` | {'int': 319} |
| `chromeOtherPssKb` | {'int': 319} |
| `chromeProcesses` | {'int': 319} |
| `chromeProfiles` | {'int': 319} |
| `chromeRendererMaxPssKb` | {'int': 319} |
| `chromeRendererPssKb` | {'int': 319} |
| `chromeRenderers` | {'int': 319} |
| `chromeTabs` | {'int': 319} |
| `chromeTabsProbedProfiles` | {'int': 319} |
| `chromeUtilityPssKb` | {'int': 319} |
| `desktopPssKb` | {'int': 319} |
| `hostPssKb` | {'int': 319} |
| `kind` | {'str': 319} |
| `memAvailableKb` | {'int': 319} |
| `memTotalKb` | {'int': 319} |
| `otherPssKb` | {'int': 319} |
| `processes` | {'int': 319} |
| `pssFallbackProcesses` | {'int': 319} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
