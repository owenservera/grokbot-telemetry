# sandbox_telemetry_parse — 2026-11-24 22:17:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2472993 lines=5480
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5465 |
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
| `chromeBrowserPssKb` | {'int': 5465} |
| `chromeGpuPssKb` | {'int': 5465} |
| `chromeOtherPssKb` | {'int': 5465} |
| `chromeProcesses` | {'int': 5465} |
| `chromeProfiles` | {'int': 5465} |
| `chromeRendererMaxPssKb` | {'int': 5465} |
| `chromeRendererPssKb` | {'int': 5465} |
| `chromeRenderers` | {'int': 5465} |
| `chromeTabs` | {'int': 5465} |
| `chromeTabsProbedProfiles` | {'int': 5465} |
| `chromeUtilityPssKb` | {'int': 5465} |
| `desktopPssKb` | {'int': 5465} |
| `hostPssKb` | {'int': 5465} |
| `kind` | {'str': 5465} |
| `memAvailableKb` | {'int': 5465} |
| `memTotalKb` | {'int': 5465} |
| `otherPssKb` | {'int': 5465} |
| `processes` | {'int': 5465} |
| `pssFallbackProcesses` | {'int': 5465} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
