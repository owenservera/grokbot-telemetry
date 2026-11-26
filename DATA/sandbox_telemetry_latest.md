# sandbox_telemetry_parse — 2026-11-26 04:54:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3082145 lines=6827
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6812 |
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
| `chromeBrowserPssKb` | {'int': 6812} |
| `chromeGpuPssKb` | {'int': 6812} |
| `chromeOtherPssKb` | {'int': 6812} |
| `chromeProcesses` | {'int': 6812} |
| `chromeProfiles` | {'int': 6812} |
| `chromeRendererMaxPssKb` | {'int': 6812} |
| `chromeRendererPssKb` | {'int': 6812} |
| `chromeRenderers` | {'int': 6812} |
| `chromeTabs` | {'int': 6812} |
| `chromeTabsProbedProfiles` | {'int': 6812} |
| `chromeUtilityPssKb` | {'int': 6812} |
| `desktopPssKb` | {'int': 6812} |
| `hostPssKb` | {'int': 6812} |
| `kind` | {'str': 6812} |
| `memAvailableKb` | {'int': 6812} |
| `memTotalKb` | {'int': 6812} |
| `otherPssKb` | {'int': 6812} |
| `processes` | {'int': 6812} |
| `pssFallbackProcesses` | {'int': 6812} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
