# sandbox_telemetry_parse — 2026-11-26 06:05:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3109293 lines=6887
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6872 |
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
| `chromeBrowserPssKb` | {'int': 6872} |
| `chromeGpuPssKb` | {'int': 6872} |
| `chromeOtherPssKb` | {'int': 6872} |
| `chromeProcesses` | {'int': 6872} |
| `chromeProfiles` | {'int': 6872} |
| `chromeRendererMaxPssKb` | {'int': 6872} |
| `chromeRendererPssKb` | {'int': 6872} |
| `chromeRenderers` | {'int': 6872} |
| `chromeTabs` | {'int': 6872} |
| `chromeTabsProbedProfiles` | {'int': 6872} |
| `chromeUtilityPssKb` | {'int': 6872} |
| `desktopPssKb` | {'int': 6872} |
| `hostPssKb` | {'int': 6872} |
| `kind` | {'str': 6872} |
| `memAvailableKb` | {'int': 6872} |
| `memTotalKb` | {'int': 6872} |
| `otherPssKb` | {'int': 6872} |
| `processes` | {'int': 6872} |
| `pssFallbackProcesses` | {'int': 6872} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
