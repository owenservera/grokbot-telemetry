# sandbox_telemetry_parse — 2026-11-28 03:49:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=720914 lines=1600
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1592 |
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
| `chromeBrowserPssKb` | {'int': 1592} |
| `chromeGpuPssKb` | {'int': 1592} |
| `chromeOtherPssKb` | {'int': 1592} |
| `chromeProcesses` | {'int': 1592} |
| `chromeProfiles` | {'int': 1592} |
| `chromeRendererMaxPssKb` | {'int': 1592} |
| `chromeRendererPssKb` | {'int': 1592} |
| `chromeRenderers` | {'int': 1592} |
| `chromeTabs` | {'int': 1592} |
| `chromeTabsProbedProfiles` | {'int': 1592} |
| `chromeUtilityPssKb` | {'int': 1592} |
| `desktopPssKb` | {'int': 1592} |
| `hostPssKb` | {'int': 1592} |
| `kind` | {'str': 1592} |
| `memAvailableKb` | {'int': 1592} |
| `memTotalKb` | {'int': 1592} |
| `otherPssKb` | {'int': 1592} |
| `processes` | {'int': 1592} |
| `pssFallbackProcesses` | {'int': 1592} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
