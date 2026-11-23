# sandbox_telemetry_parse — 2026-11-23 17:45:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1931875 lines=4284
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4269 |
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
| `chromeBrowserPssKb` | {'int': 4269} |
| `chromeGpuPssKb` | {'int': 4269} |
| `chromeOtherPssKb` | {'int': 4269} |
| `chromeProcesses` | {'int': 4269} |
| `chromeProfiles` | {'int': 4269} |
| `chromeRendererMaxPssKb` | {'int': 4269} |
| `chromeRendererPssKb` | {'int': 4269} |
| `chromeRenderers` | {'int': 4269} |
| `chromeTabs` | {'int': 4269} |
| `chromeTabsProbedProfiles` | {'int': 4269} |
| `chromeUtilityPssKb` | {'int': 4269} |
| `desktopPssKb` | {'int': 4269} |
| `hostPssKb` | {'int': 4269} |
| `kind` | {'str': 4269} |
| `memAvailableKb` | {'int': 4269} |
| `memTotalKb` | {'int': 4269} |
| `otherPssKb` | {'int': 4269} |
| `processes` | {'int': 4269} |
| `pssFallbackProcesses` | {'int': 4269} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
