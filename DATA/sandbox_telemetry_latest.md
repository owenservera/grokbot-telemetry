# sandbox_telemetry_parse — 2026-11-24 11:25:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2263895 lines=5018
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5003 |
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
| `chromeBrowserPssKb` | {'int': 5003} |
| `chromeGpuPssKb` | {'int': 5003} |
| `chromeOtherPssKb` | {'int': 5003} |
| `chromeProcesses` | {'int': 5003} |
| `chromeProfiles` | {'int': 5003} |
| `chromeRendererMaxPssKb` | {'int': 5003} |
| `chromeRendererPssKb` | {'int': 5003} |
| `chromeRenderers` | {'int': 5003} |
| `chromeTabs` | {'int': 5003} |
| `chromeTabsProbedProfiles` | {'int': 5003} |
| `chromeUtilityPssKb` | {'int': 5003} |
| `desktopPssKb` | {'int': 5003} |
| `hostPssKb` | {'int': 5003} |
| `kind` | {'str': 5003} |
| `memAvailableKb` | {'int': 5003} |
| `memTotalKb` | {'int': 5003} |
| `otherPssKb` | {'int': 5003} |
| `processes` | {'int': 5003} |
| `pssFallbackProcesses` | {'int': 5003} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
