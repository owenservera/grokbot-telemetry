# sandbox_telemetry_parse — 2026-11-26 14:37:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3294344 lines=7296
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7281 |
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
| `chromeBrowserPssKb` | {'int': 7281} |
| `chromeGpuPssKb` | {'int': 7281} |
| `chromeOtherPssKb` | {'int': 7281} |
| `chromeProcesses` | {'int': 7281} |
| `chromeProfiles` | {'int': 7281} |
| `chromeRendererMaxPssKb` | {'int': 7281} |
| `chromeRendererPssKb` | {'int': 7281} |
| `chromeRenderers` | {'int': 7281} |
| `chromeTabs` | {'int': 7281} |
| `chromeTabsProbedProfiles` | {'int': 7281} |
| `chromeUtilityPssKb` | {'int': 7281} |
| `desktopPssKb` | {'int': 7281} |
| `hostPssKb` | {'int': 7281} |
| `kind` | {'str': 7281} |
| `memAvailableKb` | {'int': 7281} |
| `memTotalKb` | {'int': 7281} |
| `otherPssKb` | {'int': 7281} |
| `processes` | {'int': 7281} |
| `pssFallbackProcesses` | {'int': 7281} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
