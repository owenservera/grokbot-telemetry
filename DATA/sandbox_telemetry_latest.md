# sandbox_telemetry_parse — 2026-11-20 09:43:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1661925 lines=3684
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3673 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3673} |
| `chromeGpuPssKb` | {'int': 3673} |
| `chromeOtherPssKb` | {'int': 3673} |
| `chromeProcesses` | {'int': 3673} |
| `chromeProfiles` | {'int': 3673} |
| `chromeRendererMaxPssKb` | {'int': 3673} |
| `chromeRendererPssKb` | {'int': 3673} |
| `chromeRenderers` | {'int': 3673} |
| `chromeTabs` | {'int': 3673} |
| `chromeTabsProbedProfiles` | {'int': 3673} |
| `chromeUtilityPssKb` | {'int': 3673} |
| `desktopPssKb` | {'int': 3673} |
| `hostPssKb` | {'int': 3673} |
| `kind` | {'str': 3673} |
| `memAvailableKb` | {'int': 3673} |
| `memTotalKb` | {'int': 3673} |
| `otherPssKb` | {'int': 3673} |
| `processes` | {'int': 3673} |
| `pssFallbackProcesses` | {'int': 3673} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
