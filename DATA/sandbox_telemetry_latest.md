# sandbox_telemetry_parse — 2026-11-07 05:50:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=332717 lines=743
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 734 |
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
| `chromeBrowserPssKb` | {'int': 734} |
| `chromeGpuPssKb` | {'int': 734} |
| `chromeOtherPssKb` | {'int': 734} |
| `chromeProcesses` | {'int': 734} |
| `chromeProfiles` | {'int': 734} |
| `chromeRendererMaxPssKb` | {'int': 734} |
| `chromeRendererPssKb` | {'int': 734} |
| `chromeRenderers` | {'int': 734} |
| `chromeTabs` | {'int': 734} |
| `chromeTabsProbedProfiles` | {'int': 734} |
| `chromeUtilityPssKb` | {'int': 734} |
| `desktopPssKb` | {'int': 734} |
| `hostPssKb` | {'int': 734} |
| `kind` | {'str': 734} |
| `memAvailableKb` | {'int': 734} |
| `memTotalKb` | {'int': 734} |
| `otherPssKb` | {'int': 734} |
| `processes` | {'int': 734} |
| `pssFallbackProcesses` | {'int': 734} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
