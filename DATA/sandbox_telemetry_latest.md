# sandbox_telemetry_parse — 2026-11-25 04:26:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2592367 lines=5744
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5729 |
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
| `chromeBrowserPssKb` | {'int': 5729} |
| `chromeGpuPssKb` | {'int': 5729} |
| `chromeOtherPssKb` | {'int': 5729} |
| `chromeProcesses` | {'int': 5729} |
| `chromeProfiles` | {'int': 5729} |
| `chromeRendererMaxPssKb` | {'int': 5729} |
| `chromeRendererPssKb` | {'int': 5729} |
| `chromeRenderers` | {'int': 5729} |
| `chromeTabs` | {'int': 5729} |
| `chromeTabsProbedProfiles` | {'int': 5729} |
| `chromeUtilityPssKb` | {'int': 5729} |
| `desktopPssKb` | {'int': 5729} |
| `hostPssKb` | {'int': 5729} |
| `kind` | {'str': 5729} |
| `memAvailableKb` | {'int': 5729} |
| `memTotalKb` | {'int': 5729} |
| `otherPssKb` | {'int': 5729} |
| `processes` | {'int': 5729} |
| `pssFallbackProcesses` | {'int': 5729} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
