# sandbox_telemetry_parse — 2026-11-26 02:11:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3027865 lines=6707
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6692 |
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
| `chromeBrowserPssKb` | {'int': 6692} |
| `chromeGpuPssKb` | {'int': 6692} |
| `chromeOtherPssKb` | {'int': 6692} |
| `chromeProcesses` | {'int': 6692} |
| `chromeProfiles` | {'int': 6692} |
| `chromeRendererMaxPssKb` | {'int': 6692} |
| `chromeRendererPssKb` | {'int': 6692} |
| `chromeRenderers` | {'int': 6692} |
| `chromeTabs` | {'int': 6692} |
| `chromeTabsProbedProfiles` | {'int': 6692} |
| `chromeUtilityPssKb` | {'int': 6692} |
| `desktopPssKb` | {'int': 6692} |
| `hostPssKb` | {'int': 6692} |
| `kind` | {'str': 6692} |
| `memAvailableKb` | {'int': 6692} |
| `memTotalKb` | {'int': 6692} |
| `otherPssKb` | {'int': 6692} |
| `processes` | {'int': 6692} |
| `pssFallbackProcesses` | {'int': 6692} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
