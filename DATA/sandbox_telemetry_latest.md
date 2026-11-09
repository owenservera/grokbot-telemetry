# sandbox_telemetry_parse — 2026-11-09 12:36:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=658398 lines=1463
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1454 |
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
| `chromeBrowserPssKb` | {'int': 1454} |
| `chromeGpuPssKb` | {'int': 1454} |
| `chromeOtherPssKb` | {'int': 1454} |
| `chromeProcesses` | {'int': 1454} |
| `chromeProfiles` | {'int': 1454} |
| `chromeRendererMaxPssKb` | {'int': 1454} |
| `chromeRendererPssKb` | {'int': 1454} |
| `chromeRenderers` | {'int': 1454} |
| `chromeTabs` | {'int': 1454} |
| `chromeTabsProbedProfiles` | {'int': 1454} |
| `chromeUtilityPssKb` | {'int': 1454} |
| `desktopPssKb` | {'int': 1454} |
| `hostPssKb` | {'int': 1454} |
| `kind` | {'str': 1454} |
| `memAvailableKb` | {'int': 1454} |
| `memTotalKb` | {'int': 1454} |
| `otherPssKb` | {'int': 1454} |
| `processes` | {'int': 1454} |
| `pssFallbackProcesses` | {'int': 1454} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
