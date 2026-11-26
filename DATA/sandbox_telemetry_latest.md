# sandbox_telemetry_parse — 2026-11-26 06:37:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3121971 lines=6915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6900 |
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
| `chromeBrowserPssKb` | {'int': 6900} |
| `chromeGpuPssKb` | {'int': 6900} |
| `chromeOtherPssKb` | {'int': 6900} |
| `chromeProcesses` | {'int': 6900} |
| `chromeProfiles` | {'int': 6900} |
| `chromeRendererMaxPssKb` | {'int': 6900} |
| `chromeRendererPssKb` | {'int': 6900} |
| `chromeRenderers` | {'int': 6900} |
| `chromeTabs` | {'int': 6900} |
| `chromeTabsProbedProfiles` | {'int': 6900} |
| `chromeUtilityPssKb` | {'int': 6900} |
| `desktopPssKb` | {'int': 6900} |
| `hostPssKb` | {'int': 6900} |
| `kind` | {'str': 6900} |
| `memAvailableKb` | {'int': 6900} |
| `memTotalKb` | {'int': 6900} |
| `otherPssKb` | {'int': 6900} |
| `processes` | {'int': 6900} |
| `pssFallbackProcesses` | {'int': 6900} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
