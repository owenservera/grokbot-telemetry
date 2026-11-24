# sandbox_telemetry_parse — 2026-11-24 23:37:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2499680 lines=5539
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5524 |
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
| `chromeBrowserPssKb` | {'int': 5524} |
| `chromeGpuPssKb` | {'int': 5524} |
| `chromeOtherPssKb` | {'int': 5524} |
| `chromeProcesses` | {'int': 5524} |
| `chromeProfiles` | {'int': 5524} |
| `chromeRendererMaxPssKb` | {'int': 5524} |
| `chromeRendererPssKb` | {'int': 5524} |
| `chromeRenderers` | {'int': 5524} |
| `chromeTabs` | {'int': 5524} |
| `chromeTabsProbedProfiles` | {'int': 5524} |
| `chromeUtilityPssKb` | {'int': 5524} |
| `desktopPssKb` | {'int': 5524} |
| `hostPssKb` | {'int': 5524} |
| `kind` | {'str': 5524} |
| `memAvailableKb` | {'int': 5524} |
| `memTotalKb` | {'int': 5524} |
| `otherPssKb` | {'int': 5524} |
| `processes` | {'int': 5524} |
| `pssFallbackProcesses` | {'int': 5524} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
