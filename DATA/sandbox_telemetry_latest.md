# sandbox_telemetry_parse — 2026-11-09 21:36:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=849421 lines=1885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1876 |
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
| `chromeBrowserPssKb` | {'int': 1876} |
| `chromeGpuPssKb` | {'int': 1876} |
| `chromeOtherPssKb` | {'int': 1876} |
| `chromeProcesses` | {'int': 1876} |
| `chromeProfiles` | {'int': 1876} |
| `chromeRendererMaxPssKb` | {'int': 1876} |
| `chromeRendererPssKb` | {'int': 1876} |
| `chromeRenderers` | {'int': 1876} |
| `chromeTabs` | {'int': 1876} |
| `chromeTabsProbedProfiles` | {'int': 1876} |
| `chromeUtilityPssKb` | {'int': 1876} |
| `desktopPssKb` | {'int': 1876} |
| `hostPssKb` | {'int': 1876} |
| `kind` | {'str': 1876} |
| `memAvailableKb` | {'int': 1876} |
| `memTotalKb` | {'int': 1876} |
| `otherPssKb` | {'int': 1876} |
| `processes` | {'int': 1876} |
| `pssFallbackProcesses` | {'int': 1876} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
