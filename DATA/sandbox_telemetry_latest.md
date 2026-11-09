# sandbox_telemetry_parse — 2026-11-09 17:53:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=775212 lines=1721
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1712 |
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
| `chromeBrowserPssKb` | {'int': 1712} |
| `chromeGpuPssKb` | {'int': 1712} |
| `chromeOtherPssKb` | {'int': 1712} |
| `chromeProcesses` | {'int': 1712} |
| `chromeProfiles` | {'int': 1712} |
| `chromeRendererMaxPssKb` | {'int': 1712} |
| `chromeRendererPssKb` | {'int': 1712} |
| `chromeRenderers` | {'int': 1712} |
| `chromeTabs` | {'int': 1712} |
| `chromeTabsProbedProfiles` | {'int': 1712} |
| `chromeUtilityPssKb` | {'int': 1712} |
| `desktopPssKb` | {'int': 1712} |
| `hostPssKb` | {'int': 1712} |
| `kind` | {'str': 1712} |
| `memAvailableKb` | {'int': 1712} |
| `memTotalKb` | {'int': 1712} |
| `otherPssKb` | {'int': 1712} |
| `processes` | {'int': 1712} |
| `pssFallbackProcesses` | {'int': 1712} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
