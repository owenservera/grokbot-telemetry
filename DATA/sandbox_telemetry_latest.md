# sandbox_telemetry_parse — 2026-11-09 21:06:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=838118 lines=1860
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1851 |
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
| `chromeBrowserPssKb` | {'int': 1851} |
| `chromeGpuPssKb` | {'int': 1851} |
| `chromeOtherPssKb` | {'int': 1851} |
| `chromeProcesses` | {'int': 1851} |
| `chromeProfiles` | {'int': 1851} |
| `chromeRendererMaxPssKb` | {'int': 1851} |
| `chromeRendererPssKb` | {'int': 1851} |
| `chromeRenderers` | {'int': 1851} |
| `chromeTabs` | {'int': 1851} |
| `chromeTabsProbedProfiles` | {'int': 1851} |
| `chromeUtilityPssKb` | {'int': 1851} |
| `desktopPssKb` | {'int': 1851} |
| `hostPssKb` | {'int': 1851} |
| `kind` | {'str': 1851} |
| `memAvailableKb` | {'int': 1851} |
| `memTotalKb` | {'int': 1851} |
| `otherPssKb` | {'int': 1851} |
| `processes` | {'int': 1851} |
| `pssFallbackProcesses` | {'int': 1851} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
