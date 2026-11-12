# sandbox_telemetry_parse — 2026-11-12 03:46:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1954920 lines=4328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4319 |
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
| `chromeBrowserPssKb` | {'int': 4319} |
| `chromeGpuPssKb` | {'int': 4319} |
| `chromeOtherPssKb` | {'int': 4319} |
| `chromeProcesses` | {'int': 4319} |
| `chromeProfiles` | {'int': 4319} |
| `chromeRendererMaxPssKb` | {'int': 4319} |
| `chromeRendererPssKb` | {'int': 4319} |
| `chromeRenderers` | {'int': 4319} |
| `chromeTabs` | {'int': 4319} |
| `chromeTabsProbedProfiles` | {'int': 4319} |
| `chromeUtilityPssKb` | {'int': 4319} |
| `desktopPssKb` | {'int': 4319} |
| `hostPssKb` | {'int': 4319} |
| `kind` | {'str': 4319} |
| `memAvailableKb` | {'int': 4319} |
| `memTotalKb` | {'int': 4319} |
| `otherPssKb` | {'int': 4319} |
| `processes` | {'int': 4319} |
| `pssFallbackProcesses` | {'int': 4319} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
