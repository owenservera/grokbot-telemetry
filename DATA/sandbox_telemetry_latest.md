# sandbox_telemetry_parse — 2026-11-10 20:52:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1315994 lines=2916
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2907 |
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
| `chromeBrowserPssKb` | {'int': 2907} |
| `chromeGpuPssKb` | {'int': 2907} |
| `chromeOtherPssKb` | {'int': 2907} |
| `chromeProcesses` | {'int': 2907} |
| `chromeProfiles` | {'int': 2907} |
| `chromeRendererMaxPssKb` | {'int': 2907} |
| `chromeRendererPssKb` | {'int': 2907} |
| `chromeRenderers` | {'int': 2907} |
| `chromeTabs` | {'int': 2907} |
| `chromeTabsProbedProfiles` | {'int': 2907} |
| `chromeUtilityPssKb` | {'int': 2907} |
| `desktopPssKb` | {'int': 2907} |
| `hostPssKb` | {'int': 2907} |
| `kind` | {'str': 2907} |
| `memAvailableKb` | {'int': 2907} |
| `memTotalKb` | {'int': 2907} |
| `otherPssKb` | {'int': 2907} |
| `processes` | {'int': 2907} |
| `pssFallbackProcesses` | {'int': 2907} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
