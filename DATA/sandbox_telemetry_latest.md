# sandbox_telemetry_parse — 2026-11-11 04:55:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1478386 lines=3275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3266 |
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
| `chromeBrowserPssKb` | {'int': 3266} |
| `chromeGpuPssKb` | {'int': 3266} |
| `chromeOtherPssKb` | {'int': 3266} |
| `chromeProcesses` | {'int': 3266} |
| `chromeProfiles` | {'int': 3266} |
| `chromeRendererMaxPssKb` | {'int': 3266} |
| `chromeRendererPssKb` | {'int': 3266} |
| `chromeRenderers` | {'int': 3266} |
| `chromeTabs` | {'int': 3266} |
| `chromeTabsProbedProfiles` | {'int': 3266} |
| `chromeUtilityPssKb` | {'int': 3266} |
| `desktopPssKb` | {'int': 3266} |
| `hostPssKb` | {'int': 3266} |
| `kind` | {'str': 3266} |
| `memAvailableKb` | {'int': 3266} |
| `memTotalKb` | {'int': 3266} |
| `otherPssKb` | {'int': 3266} |
| `processes` | {'int': 3266} |
| `pssFallbackProcesses` | {'int': 3266} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
