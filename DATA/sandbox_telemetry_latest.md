# sandbox_telemetry_parse — 2026-11-11 00:36:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1401986 lines=3106
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3097 |
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
| `chromeBrowserPssKb` | {'int': 3097} |
| `chromeGpuPssKb` | {'int': 3097} |
| `chromeOtherPssKb` | {'int': 3097} |
| `chromeProcesses` | {'int': 3097} |
| `chromeProfiles` | {'int': 3097} |
| `chromeRendererMaxPssKb` | {'int': 3097} |
| `chromeRendererPssKb` | {'int': 3097} |
| `chromeRenderers` | {'int': 3097} |
| `chromeTabs` | {'int': 3097} |
| `chromeTabsProbedProfiles` | {'int': 3097} |
| `chromeUtilityPssKb` | {'int': 3097} |
| `desktopPssKb` | {'int': 3097} |
| `hostPssKb` | {'int': 3097} |
| `kind` | {'str': 3097} |
| `memAvailableKb` | {'int': 3097} |
| `memTotalKb` | {'int': 3097} |
| `otherPssKb` | {'int': 3097} |
| `processes` | {'int': 3097} |
| `pssFallbackProcesses` | {'int': 3097} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
