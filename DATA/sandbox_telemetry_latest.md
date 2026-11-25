# sandbox_telemetry_parse — 2026-11-25 06:25:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2628988 lines=5825
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5810 |
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
| `chromeBrowserPssKb` | {'int': 5810} |
| `chromeGpuPssKb` | {'int': 5810} |
| `chromeOtherPssKb` | {'int': 5810} |
| `chromeProcesses` | {'int': 5810} |
| `chromeProfiles` | {'int': 5810} |
| `chromeRendererMaxPssKb` | {'int': 5810} |
| `chromeRendererPssKb` | {'int': 5810} |
| `chromeRenderers` | {'int': 5810} |
| `chromeTabs` | {'int': 5810} |
| `chromeTabsProbedProfiles` | {'int': 5810} |
| `chromeUtilityPssKb` | {'int': 5810} |
| `desktopPssKb` | {'int': 5810} |
| `hostPssKb` | {'int': 5810} |
| `kind` | {'str': 5810} |
| `memAvailableKb` | {'int': 5810} |
| `memTotalKb` | {'int': 5810} |
| `otherPssKb` | {'int': 5810} |
| `processes` | {'int': 5810} |
| `pssFallbackProcesses` | {'int': 5810} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
