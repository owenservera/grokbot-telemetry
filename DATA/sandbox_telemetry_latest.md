# sandbox_telemetry_parse — 2026-11-12 22:45:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2358234 lines=5219
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5210 |
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
| `chromeBrowserPssKb` | {'int': 5210} |
| `chromeGpuPssKb` | {'int': 5210} |
| `chromeOtherPssKb` | {'int': 5210} |
| `chromeProcesses` | {'int': 5210} |
| `chromeProfiles` | {'int': 5210} |
| `chromeRendererMaxPssKb` | {'int': 5210} |
| `chromeRendererPssKb` | {'int': 5210} |
| `chromeRenderers` | {'int': 5210} |
| `chromeTabs` | {'int': 5210} |
| `chromeTabsProbedProfiles` | {'int': 5210} |
| `chromeUtilityPssKb` | {'int': 5210} |
| `desktopPssKb` | {'int': 5210} |
| `hostPssKb` | {'int': 5210} |
| `kind` | {'str': 5210} |
| `memAvailableKb` | {'int': 5210} |
| `memTotalKb` | {'int': 5210} |
| `otherPssKb` | {'int': 5210} |
| `processes` | {'int': 5210} |
| `pssFallbackProcesses` | {'int': 5210} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
