# sandbox_telemetry_parse — 2026-11-07 03:57:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=301973 lines=675
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 666 |
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
| `chromeBrowserPssKb` | {'int': 666} |
| `chromeGpuPssKb` | {'int': 666} |
| `chromeOtherPssKb` | {'int': 666} |
| `chromeProcesses` | {'int': 666} |
| `chromeProfiles` | {'int': 666} |
| `chromeRendererMaxPssKb` | {'int': 666} |
| `chromeRendererPssKb` | {'int': 666} |
| `chromeRenderers` | {'int': 666} |
| `chromeTabs` | {'int': 666} |
| `chromeTabsProbedProfiles` | {'int': 666} |
| `chromeUtilityPssKb` | {'int': 666} |
| `desktopPssKb` | {'int': 666} |
| `hostPssKb` | {'int': 666} |
| `kind` | {'str': 666} |
| `memAvailableKb` | {'int': 666} |
| `memTotalKb` | {'int': 666} |
| `otherPssKb` | {'int': 666} |
| `processes` | {'int': 666} |
| `pssFallbackProcesses` | {'int': 666} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
