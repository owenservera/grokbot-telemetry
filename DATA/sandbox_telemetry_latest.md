# sandbox_telemetry_parse — 2026-11-19 21:55:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1456683 lines=3230
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3219 |
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
| `chromeBrowserPssKb` | {'int': 3219} |
| `chromeGpuPssKb` | {'int': 3219} |
| `chromeOtherPssKb` | {'int': 3219} |
| `chromeProcesses` | {'int': 3219} |
| `chromeProfiles` | {'int': 3219} |
| `chromeRendererMaxPssKb` | {'int': 3219} |
| `chromeRendererPssKb` | {'int': 3219} |
| `chromeRenderers` | {'int': 3219} |
| `chromeTabs` | {'int': 3219} |
| `chromeTabsProbedProfiles` | {'int': 3219} |
| `chromeUtilityPssKb` | {'int': 3219} |
| `desktopPssKb` | {'int': 3219} |
| `hostPssKb` | {'int': 3219} |
| `kind` | {'str': 3219} |
| `memAvailableKb` | {'int': 3219} |
| `memTotalKb` | {'int': 3219} |
| `otherPssKb` | {'int': 3219} |
| `processes` | {'int': 3219} |
| `pssFallbackProcesses` | {'int': 3219} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
