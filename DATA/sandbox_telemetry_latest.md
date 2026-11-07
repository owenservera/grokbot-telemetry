# sandbox_telemetry_parse — 2026-11-07 11:25:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=437631 lines=975
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 966 |
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
| `chromeBrowserPssKb` | {'int': 966} |
| `chromeGpuPssKb` | {'int': 966} |
| `chromeOtherPssKb` | {'int': 966} |
| `chromeProcesses` | {'int': 966} |
| `chromeProfiles` | {'int': 966} |
| `chromeRendererMaxPssKb` | {'int': 966} |
| `chromeRendererPssKb` | {'int': 966} |
| `chromeRenderers` | {'int': 966} |
| `chromeTabs` | {'int': 966} |
| `chromeTabsProbedProfiles` | {'int': 966} |
| `chromeUtilityPssKb` | {'int': 966} |
| `desktopPssKb` | {'int': 966} |
| `hostPssKb` | {'int': 966} |
| `kind` | {'str': 966} |
| `memAvailableKb` | {'int': 966} |
| `memTotalKb` | {'int': 966} |
| `otherPssKb` | {'int': 966} |
| `processes` | {'int': 966} |
| `pssFallbackProcesses` | {'int': 966} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
