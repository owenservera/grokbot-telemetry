# sandbox_telemetry_parse — 2026-11-26 03:43:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3054544 lines=6766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6751 |
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
| `chromeBrowserPssKb` | {'int': 6751} |
| `chromeGpuPssKb` | {'int': 6751} |
| `chromeOtherPssKb` | {'int': 6751} |
| `chromeProcesses` | {'int': 6751} |
| `chromeProfiles` | {'int': 6751} |
| `chromeRendererMaxPssKb` | {'int': 6751} |
| `chromeRendererPssKb` | {'int': 6751} |
| `chromeRenderers` | {'int': 6751} |
| `chromeTabs` | {'int': 6751} |
| `chromeTabsProbedProfiles` | {'int': 6751} |
| `chromeUtilityPssKb` | {'int': 6751} |
| `desktopPssKb` | {'int': 6751} |
| `hostPssKb` | {'int': 6751} |
| `kind` | {'str': 6751} |
| `memAvailableKb` | {'int': 6751} |
| `memTotalKb` | {'int': 6751} |
| `otherPssKb` | {'int': 6751} |
| `processes` | {'int': 6751} |
| `pssFallbackProcesses` | {'int': 6751} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
