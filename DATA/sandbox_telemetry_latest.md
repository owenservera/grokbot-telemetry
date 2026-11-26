# sandbox_telemetry_parse — 2026-11-26 05:16:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3090745 lines=6846
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6831 |
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
| `chromeBrowserPssKb` | {'int': 6831} |
| `chromeGpuPssKb` | {'int': 6831} |
| `chromeOtherPssKb` | {'int': 6831} |
| `chromeProcesses` | {'int': 6831} |
| `chromeProfiles` | {'int': 6831} |
| `chromeRendererMaxPssKb` | {'int': 6831} |
| `chromeRendererPssKb` | {'int': 6831} |
| `chromeRenderers` | {'int': 6831} |
| `chromeTabs` | {'int': 6831} |
| `chromeTabsProbedProfiles` | {'int': 6831} |
| `chromeUtilityPssKb` | {'int': 6831} |
| `desktopPssKb` | {'int': 6831} |
| `hostPssKb` | {'int': 6831} |
| `kind` | {'str': 6831} |
| `memAvailableKb` | {'int': 6831} |
| `memTotalKb` | {'int': 6831} |
| `otherPssKb` | {'int': 6831} |
| `processes` | {'int': 6831} |
| `pssFallbackProcesses` | {'int': 6831} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
