# sandbox_telemetry_parse — 2026-11-26 07:25:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3140969 lines=6957
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6942 |
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
| `chromeBrowserPssKb` | {'int': 6942} |
| `chromeGpuPssKb` | {'int': 6942} |
| `chromeOtherPssKb` | {'int': 6942} |
| `chromeProcesses` | {'int': 6942} |
| `chromeProfiles` | {'int': 6942} |
| `chromeRendererMaxPssKb` | {'int': 6942} |
| `chromeRendererPssKb` | {'int': 6942} |
| `chromeRenderers` | {'int': 6942} |
| `chromeTabs` | {'int': 6942} |
| `chromeTabsProbedProfiles` | {'int': 6942} |
| `chromeUtilityPssKb` | {'int': 6942} |
| `desktopPssKb` | {'int': 6942} |
| `hostPssKb` | {'int': 6942} |
| `kind` | {'str': 6942} |
| `memAvailableKb` | {'int': 6942} |
| `memTotalKb` | {'int': 6942} |
| `otherPssKb` | {'int': 6942} |
| `processes` | {'int': 6942} |
| `pssFallbackProcesses` | {'int': 6942} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
