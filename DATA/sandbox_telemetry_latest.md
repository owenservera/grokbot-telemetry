# sandbox_telemetry_parse — 2026-11-28 03:24:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=711866 lines=1580
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1572 |
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
| `chromeBrowserPssKb` | {'int': 1572} |
| `chromeGpuPssKb` | {'int': 1572} |
| `chromeOtherPssKb` | {'int': 1572} |
| `chromeProcesses` | {'int': 1572} |
| `chromeProfiles` | {'int': 1572} |
| `chromeRendererMaxPssKb` | {'int': 1572} |
| `chromeRendererPssKb` | {'int': 1572} |
| `chromeRenderers` | {'int': 1572} |
| `chromeTabs` | {'int': 1572} |
| `chromeTabsProbedProfiles` | {'int': 1572} |
| `chromeUtilityPssKb` | {'int': 1572} |
| `desktopPssKb` | {'int': 1572} |
| `hostPssKb` | {'int': 1572} |
| `kind` | {'str': 1572} |
| `memAvailableKb` | {'int': 1572} |
| `memTotalKb` | {'int': 1572} |
| `otherPssKb` | {'int': 1572} |
| `processes` | {'int': 1572} |
| `pssFallbackProcesses` | {'int': 1572} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
