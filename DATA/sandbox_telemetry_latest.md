# sandbox_telemetry_parse — 2026-11-11 14:24:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1671561 lines=3702
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3693 |
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
| `chromeBrowserPssKb` | {'int': 3693} |
| `chromeGpuPssKb` | {'int': 3693} |
| `chromeOtherPssKb` | {'int': 3693} |
| `chromeProcesses` | {'int': 3693} |
| `chromeProfiles` | {'int': 3693} |
| `chromeRendererMaxPssKb` | {'int': 3693} |
| `chromeRendererPssKb` | {'int': 3693} |
| `chromeRenderers` | {'int': 3693} |
| `chromeTabs` | {'int': 3693} |
| `chromeTabsProbedProfiles` | {'int': 3693} |
| `chromeUtilityPssKb` | {'int': 3693} |
| `desktopPssKb` | {'int': 3693} |
| `hostPssKb` | {'int': 3693} |
| `kind` | {'str': 3693} |
| `memAvailableKb` | {'int': 3693} |
| `memTotalKb` | {'int': 3693} |
| `otherPssKb` | {'int': 3693} |
| `processes` | {'int': 3693} |
| `pssFallbackProcesses` | {'int': 3693} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
