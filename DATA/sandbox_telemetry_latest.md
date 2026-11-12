# sandbox_telemetry_parse — 2026-11-12 12:11:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2123662 lines=4701
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4692 |
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
| `chromeBrowserPssKb` | {'int': 4692} |
| `chromeGpuPssKb` | {'int': 4692} |
| `chromeOtherPssKb` | {'int': 4692} |
| `chromeProcesses` | {'int': 4692} |
| `chromeProfiles` | {'int': 4692} |
| `chromeRendererMaxPssKb` | {'int': 4692} |
| `chromeRendererPssKb` | {'int': 4692} |
| `chromeRenderers` | {'int': 4692} |
| `chromeTabs` | {'int': 4692} |
| `chromeTabsProbedProfiles` | {'int': 4692} |
| `chromeUtilityPssKb` | {'int': 4692} |
| `desktopPssKb` | {'int': 4692} |
| `hostPssKb` | {'int': 4692} |
| `kind` | {'str': 4692} |
| `memAvailableKb` | {'int': 4692} |
| `memTotalKb` | {'int': 4692} |
| `otherPssKb` | {'int': 4692} |
| `processes` | {'int': 4692} |
| `pssFallbackProcesses` | {'int': 4692} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
