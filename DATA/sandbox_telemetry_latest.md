# sandbox_telemetry_parse — 2026-11-11 13:59:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1662969 lines=3683
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3674 |
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
| `chromeBrowserPssKb` | {'int': 3674} |
| `chromeGpuPssKb` | {'int': 3674} |
| `chromeOtherPssKb` | {'int': 3674} |
| `chromeProcesses` | {'int': 3674} |
| `chromeProfiles` | {'int': 3674} |
| `chromeRendererMaxPssKb` | {'int': 3674} |
| `chromeRendererPssKb` | {'int': 3674} |
| `chromeRenderers` | {'int': 3674} |
| `chromeTabs` | {'int': 3674} |
| `chromeTabsProbedProfiles` | {'int': 3674} |
| `chromeUtilityPssKb` | {'int': 3674} |
| `desktopPssKb` | {'int': 3674} |
| `hostPssKb` | {'int': 3674} |
| `kind` | {'str': 3674} |
| `memAvailableKb` | {'int': 3674} |
| `memTotalKb` | {'int': 3674} |
| `otherPssKb` | {'int': 3674} |
| `processes` | {'int': 3674} |
| `pssFallbackProcesses` | {'int': 3674} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
