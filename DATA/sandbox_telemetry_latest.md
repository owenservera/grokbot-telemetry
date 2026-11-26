# sandbox_telemetry_parse — 2026-11-26 08:47:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3168552 lines=7018
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7003 |
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
| `chromeBrowserPssKb` | {'int': 7003} |
| `chromeGpuPssKb` | {'int': 7003} |
| `chromeOtherPssKb` | {'int': 7003} |
| `chromeProcesses` | {'int': 7003} |
| `chromeProfiles` | {'int': 7003} |
| `chromeRendererMaxPssKb` | {'int': 7003} |
| `chromeRendererPssKb` | {'int': 7003} |
| `chromeRenderers` | {'int': 7003} |
| `chromeTabs` | {'int': 7003} |
| `chromeTabsProbedProfiles` | {'int': 7003} |
| `chromeUtilityPssKb` | {'int': 7003} |
| `desktopPssKb` | {'int': 7003} |
| `hostPssKb` | {'int': 7003} |
| `kind` | {'str': 7003} |
| `memAvailableKb` | {'int': 7003} |
| `memTotalKb` | {'int': 7003} |
| `otherPssKb` | {'int': 7003} |
| `processes` | {'int': 7003} |
| `pssFallbackProcesses` | {'int': 7003} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
