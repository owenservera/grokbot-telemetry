# sandbox_telemetry_parse — 2026-11-26 10:43:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3216542 lines=7124
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7109 |
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
| `chromeBrowserPssKb` | {'int': 7109} |
| `chromeGpuPssKb` | {'int': 7109} |
| `chromeOtherPssKb` | {'int': 7109} |
| `chromeProcesses` | {'int': 7109} |
| `chromeProfiles` | {'int': 7109} |
| `chromeRendererMaxPssKb` | {'int': 7109} |
| `chromeRendererPssKb` | {'int': 7109} |
| `chromeRenderers` | {'int': 7109} |
| `chromeTabs` | {'int': 7109} |
| `chromeTabsProbedProfiles` | {'int': 7109} |
| `chromeUtilityPssKb` | {'int': 7109} |
| `desktopPssKb` | {'int': 7109} |
| `hostPssKb` | {'int': 7109} |
| `kind` | {'str': 7109} |
| `memAvailableKb` | {'int': 7109} |
| `memTotalKb` | {'int': 7109} |
| `otherPssKb` | {'int': 7109} |
| `processes` | {'int': 7109} |
| `pssFallbackProcesses` | {'int': 7109} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
