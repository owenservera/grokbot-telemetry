# sandbox_telemetry_parse — 2026-11-07 16:56:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=548916 lines=1221
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1212 |
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
| `chromeBrowserPssKb` | {'int': 1212} |
| `chromeGpuPssKb` | {'int': 1212} |
| `chromeOtherPssKb` | {'int': 1212} |
| `chromeProcesses` | {'int': 1212} |
| `chromeProfiles` | {'int': 1212} |
| `chromeRendererMaxPssKb` | {'int': 1212} |
| `chromeRendererPssKb` | {'int': 1212} |
| `chromeRenderers` | {'int': 1212} |
| `chromeTabs` | {'int': 1212} |
| `chromeTabsProbedProfiles` | {'int': 1212} |
| `chromeUtilityPssKb` | {'int': 1212} |
| `desktopPssKb` | {'int': 1212} |
| `hostPssKb` | {'int': 1212} |
| `kind` | {'str': 1212} |
| `memAvailableKb` | {'int': 1212} |
| `memTotalKb` | {'int': 1212} |
| `otherPssKb` | {'int': 1212} |
| `processes` | {'int': 1212} |
| `pssFallbackProcesses` | {'int': 1212} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
