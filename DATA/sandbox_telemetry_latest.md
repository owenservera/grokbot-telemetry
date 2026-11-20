# sandbox_telemetry_parse — 2026-11-20 06:35:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1604960 lines=3558
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3547 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3547} |
| `chromeGpuPssKb` | {'int': 3547} |
| `chromeOtherPssKb` | {'int': 3547} |
| `chromeProcesses` | {'int': 3547} |
| `chromeProfiles` | {'int': 3547} |
| `chromeRendererMaxPssKb` | {'int': 3547} |
| `chromeRendererPssKb` | {'int': 3547} |
| `chromeRenderers` | {'int': 3547} |
| `chromeTabs` | {'int': 3547} |
| `chromeTabsProbedProfiles` | {'int': 3547} |
| `chromeUtilityPssKb` | {'int': 3547} |
| `desktopPssKb` | {'int': 3547} |
| `hostPssKb` | {'int': 3547} |
| `kind` | {'str': 3547} |
| `memAvailableKb` | {'int': 3547} |
| `memTotalKb` | {'int': 3547} |
| `otherPssKb` | {'int': 3547} |
| `processes` | {'int': 3547} |
| `pssFallbackProcesses` | {'int': 3547} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
