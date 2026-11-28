# sandbox_telemetry_parse — 2026-11-28 02:20:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=693306 lines=1539
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1531 |
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
| `chromeBrowserPssKb` | {'int': 1531} |
| `chromeGpuPssKb` | {'int': 1531} |
| `chromeOtherPssKb` | {'int': 1531} |
| `chromeProcesses` | {'int': 1531} |
| `chromeProfiles` | {'int': 1531} |
| `chromeRendererMaxPssKb` | {'int': 1531} |
| `chromeRendererPssKb` | {'int': 1531} |
| `chromeRenderers` | {'int': 1531} |
| `chromeTabs` | {'int': 1531} |
| `chromeTabsProbedProfiles` | {'int': 1531} |
| `chromeUtilityPssKb` | {'int': 1531} |
| `desktopPssKb` | {'int': 1531} |
| `hostPssKb` | {'int': 1531} |
| `kind` | {'str': 1531} |
| `memAvailableKb` | {'int': 1531} |
| `memTotalKb` | {'int': 1531} |
| `otherPssKb` | {'int': 1531} |
| `processes` | {'int': 1531} |
| `pssFallbackProcesses` | {'int': 1531} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
