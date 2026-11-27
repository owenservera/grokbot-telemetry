# sandbox_telemetry_parse — 2026-11-28 00:12:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=650301 lines=1444
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1436 |
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
| `chromeBrowserPssKb` | {'int': 1436} |
| `chromeGpuPssKb` | {'int': 1436} |
| `chromeOtherPssKb` | {'int': 1436} |
| `chromeProcesses` | {'int': 1436} |
| `chromeProfiles` | {'int': 1436} |
| `chromeRendererMaxPssKb` | {'int': 1436} |
| `chromeRendererPssKb` | {'int': 1436} |
| `chromeRenderers` | {'int': 1436} |
| `chromeTabs` | {'int': 1436} |
| `chromeTabsProbedProfiles` | {'int': 1436} |
| `chromeUtilityPssKb` | {'int': 1436} |
| `desktopPssKb` | {'int': 1436} |
| `hostPssKb` | {'int': 1436} |
| `kind` | {'str': 1436} |
| `memAvailableKb` | {'int': 1436} |
| `memTotalKb` | {'int': 1436} |
| `otherPssKb` | {'int': 1436} |
| `processes` | {'int': 1436} |
| `pssFallbackProcesses` | {'int': 1436} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
