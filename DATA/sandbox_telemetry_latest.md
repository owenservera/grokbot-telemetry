# sandbox_telemetry_parse — 2026-11-28 07:07:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=782885 lines=1737
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1729 |
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
| `chromeBrowserPssKb` | {'int': 1729} |
| `chromeGpuPssKb` | {'int': 1729} |
| `chromeOtherPssKb` | {'int': 1729} |
| `chromeProcesses` | {'int': 1729} |
| `chromeProfiles` | {'int': 1729} |
| `chromeRendererMaxPssKb` | {'int': 1729} |
| `chromeRendererPssKb` | {'int': 1729} |
| `chromeRenderers` | {'int': 1729} |
| `chromeTabs` | {'int': 1729} |
| `chromeTabsProbedProfiles` | {'int': 1729} |
| `chromeUtilityPssKb` | {'int': 1729} |
| `desktopPssKb` | {'int': 1729} |
| `hostPssKb` | {'int': 1729} |
| `kind` | {'str': 1729} |
| `memAvailableKb` | {'int': 1729} |
| `memTotalKb` | {'int': 1729} |
| `otherPssKb` | {'int': 1729} |
| `processes` | {'int': 1729} |
| `pssFallbackProcesses` | {'int': 1729} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
