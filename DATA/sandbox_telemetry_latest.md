# sandbox_telemetry_parse — 2026-11-27 00:46:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=162106 lines=365
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 357 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 357} |
| `chromeGpuPssKb` | {'int': 357} |
| `chromeOtherPssKb` | {'int': 357} |
| `chromeProcesses` | {'int': 357} |
| `chromeProfiles` | {'int': 357} |
| `chromeRendererMaxPssKb` | {'int': 357} |
| `chromeRendererPssKb` | {'int': 357} |
| `chromeRenderers` | {'int': 357} |
| `chromeTabs` | {'int': 357} |
| `chromeTabsProbedProfiles` | {'int': 357} |
| `chromeUtilityPssKb` | {'int': 357} |
| `desktopPssKb` | {'int': 357} |
| `hostPssKb` | {'int': 357} |
| `kind` | {'str': 357} |
| `memAvailableKb` | {'int': 357} |
| `memTotalKb` | {'int': 357} |
| `otherPssKb` | {'int': 357} |
| `processes` | {'int': 357} |
| `pssFallbackProcesses` | {'int': 357} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
