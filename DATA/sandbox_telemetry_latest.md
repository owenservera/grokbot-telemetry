# sandbox_telemetry_parse — 2026-11-24 21:09:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2451734 lines=5433
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5418 |
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
| `chromeBrowserPssKb` | {'int': 5418} |
| `chromeGpuPssKb` | {'int': 5418} |
| `chromeOtherPssKb` | {'int': 5418} |
| `chromeProcesses` | {'int': 5418} |
| `chromeProfiles` | {'int': 5418} |
| `chromeRendererMaxPssKb` | {'int': 5418} |
| `chromeRendererPssKb` | {'int': 5418} |
| `chromeRenderers` | {'int': 5418} |
| `chromeTabs` | {'int': 5418} |
| `chromeTabsProbedProfiles` | {'int': 5418} |
| `chromeUtilityPssKb` | {'int': 5418} |
| `desktopPssKb` | {'int': 5418} |
| `hostPssKb` | {'int': 5418} |
| `kind` | {'str': 5418} |
| `memAvailableKb` | {'int': 5418} |
| `memTotalKb` | {'int': 5418} |
| `otherPssKb` | {'int': 5418} |
| `processes` | {'int': 5418} |
| `pssFallbackProcesses` | {'int': 5418} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
