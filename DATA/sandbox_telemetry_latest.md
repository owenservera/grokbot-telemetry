# sandbox_telemetry_parse — 2026-11-28 09:23:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=823569 lines=1827
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1819 |
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
| `chromeBrowserPssKb` | {'int': 1819} |
| `chromeGpuPssKb` | {'int': 1819} |
| `chromeOtherPssKb` | {'int': 1819} |
| `chromeProcesses` | {'int': 1819} |
| `chromeProfiles` | {'int': 1819} |
| `chromeRendererMaxPssKb` | {'int': 1819} |
| `chromeRendererPssKb` | {'int': 1819} |
| `chromeRenderers` | {'int': 1819} |
| `chromeTabs` | {'int': 1819} |
| `chromeTabsProbedProfiles` | {'int': 1819} |
| `chromeUtilityPssKb` | {'int': 1819} |
| `desktopPssKb` | {'int': 1819} |
| `hostPssKb` | {'int': 1819} |
| `kind` | {'str': 1819} |
| `memAvailableKb` | {'int': 1819} |
| `memTotalKb` | {'int': 1819} |
| `otherPssKb` | {'int': 1819} |
| `processes` | {'int': 1819} |
| `pssFallbackProcesses` | {'int': 1819} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
