# sandbox_telemetry_parse — 2026-11-28 06:32:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=771123 lines=1711
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1703 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1703} |
| `chromeGpuPssKb` | {'int': 1703} |
| `chromeOtherPssKb` | {'int': 1703} |
| `chromeProcesses` | {'int': 1703} |
| `chromeProfiles` | {'int': 1703} |
| `chromeRendererMaxPssKb` | {'int': 1703} |
| `chromeRendererPssKb` | {'int': 1703} |
| `chromeRenderers` | {'int': 1703} |
| `chromeTabs` | {'int': 1703} |
| `chromeTabsProbedProfiles` | {'int': 1703} |
| `chromeUtilityPssKb` | {'int': 1703} |
| `desktopPssKb` | {'int': 1703} |
| `hostPssKb` | {'int': 1703} |
| `kind` | {'str': 1703} |
| `memAvailableKb` | {'int': 1703} |
| `memTotalKb` | {'int': 1703} |
| `otherPssKb` | {'int': 1703} |
| `processes` | {'int': 1703} |
| `pssFallbackProcesses` | {'int': 1703} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
