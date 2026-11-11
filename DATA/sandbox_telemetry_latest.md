# sandbox_telemetry_parse — 2026-11-11 16:42:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1720437 lines=3810
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3801 |
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
| `chromeBrowserPssKb` | {'int': 3801} |
| `chromeGpuPssKb` | {'int': 3801} |
| `chromeOtherPssKb` | {'int': 3801} |
| `chromeProcesses` | {'int': 3801} |
| `chromeProfiles` | {'int': 3801} |
| `chromeRendererMaxPssKb` | {'int': 3801} |
| `chromeRendererPssKb` | {'int': 3801} |
| `chromeRenderers` | {'int': 3801} |
| `chromeTabs` | {'int': 3801} |
| `chromeTabsProbedProfiles` | {'int': 3801} |
| `chromeUtilityPssKb` | {'int': 3801} |
| `desktopPssKb` | {'int': 3801} |
| `hostPssKb` | {'int': 3801} |
| `kind` | {'str': 3801} |
| `memAvailableKb` | {'int': 3801} |
| `memTotalKb` | {'int': 3801} |
| `otherPssKb` | {'int': 3801} |
| `processes` | {'int': 3801} |
| `pssFallbackProcesses` | {'int': 3801} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
