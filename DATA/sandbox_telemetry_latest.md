# sandbox_telemetry_parse — 2026-11-26 00:33:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2997562 lines=6640
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6625 |
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
| `chromeBrowserPssKb` | {'int': 6625} |
| `chromeGpuPssKb` | {'int': 6625} |
| `chromeOtherPssKb` | {'int': 6625} |
| `chromeProcesses` | {'int': 6625} |
| `chromeProfiles` | {'int': 6625} |
| `chromeRendererMaxPssKb` | {'int': 6625} |
| `chromeRendererPssKb` | {'int': 6625} |
| `chromeRenderers` | {'int': 6625} |
| `chromeTabs` | {'int': 6625} |
| `chromeTabsProbedProfiles` | {'int': 6625} |
| `chromeUtilityPssKb` | {'int': 6625} |
| `desktopPssKb` | {'int': 6625} |
| `hostPssKb` | {'int': 6625} |
| `kind` | {'str': 6625} |
| `memAvailableKb` | {'int': 6625} |
| `memTotalKb` | {'int': 6625} |
| `otherPssKb` | {'int': 6625} |
| `processes` | {'int': 6625} |
| `pssFallbackProcesses` | {'int': 6625} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
