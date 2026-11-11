# sandbox_telemetry_parse — 2026-11-11 20:23:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1802363 lines=3991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3982 |
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
| `chromeBrowserPssKb` | {'int': 3982} |
| `chromeGpuPssKb` | {'int': 3982} |
| `chromeOtherPssKb` | {'int': 3982} |
| `chromeProcesses` | {'int': 3982} |
| `chromeProfiles` | {'int': 3982} |
| `chromeRendererMaxPssKb` | {'int': 3982} |
| `chromeRendererPssKb` | {'int': 3982} |
| `chromeRenderers` | {'int': 3982} |
| `chromeTabs` | {'int': 3982} |
| `chromeTabsProbedProfiles` | {'int': 3982} |
| `chromeUtilityPssKb` | {'int': 3982} |
| `desktopPssKb` | {'int': 3982} |
| `hostPssKb` | {'int': 3982} |
| `kind` | {'str': 3982} |
| `memAvailableKb` | {'int': 3982} |
| `memTotalKb` | {'int': 3982} |
| `otherPssKb` | {'int': 3982} |
| `processes` | {'int': 3982} |
| `pssFallbackProcesses` | {'int': 3982} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
