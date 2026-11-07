# sandbox_telemetry_parse — 2026-11-07 07:06:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=353962 lines=790
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 781 |
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
| `chromeBrowserPssKb` | {'int': 781} |
| `chromeGpuPssKb` | {'int': 781} |
| `chromeOtherPssKb` | {'int': 781} |
| `chromeProcesses` | {'int': 781} |
| `chromeProfiles` | {'int': 781} |
| `chromeRendererMaxPssKb` | {'int': 781} |
| `chromeRendererPssKb` | {'int': 781} |
| `chromeRenderers` | {'int': 781} |
| `chromeTabs` | {'int': 781} |
| `chromeTabsProbedProfiles` | {'int': 781} |
| `chromeUtilityPssKb` | {'int': 781} |
| `desktopPssKb` | {'int': 781} |
| `hostPssKb` | {'int': 781} |
| `kind` | {'str': 781} |
| `memAvailableKb` | {'int': 781} |
| `memTotalKb` | {'int': 781} |
| `otherPssKb` | {'int': 781} |
| `processes` | {'int': 781} |
| `pssFallbackProcesses` | {'int': 781} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
