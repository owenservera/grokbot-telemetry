# sandbox_telemetry_parse — 2026-11-18 12:39:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=819424 lines=1818
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1811 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1811} |
| `chromeGpuPssKb` | {'int': 1811} |
| `chromeOtherPssKb` | {'int': 1811} |
| `chromeProcesses` | {'int': 1811} |
| `chromeProfiles` | {'int': 1811} |
| `chromeRendererMaxPssKb` | {'int': 1811} |
| `chromeRendererPssKb` | {'int': 1811} |
| `chromeRenderers` | {'int': 1811} |
| `chromeTabs` | {'int': 1811} |
| `chromeTabsProbedProfiles` | {'int': 1811} |
| `chromeUtilityPssKb` | {'int': 1811} |
| `desktopPssKb` | {'int': 1811} |
| `hostPssKb` | {'int': 1811} |
| `kind` | {'str': 1811} |
| `memAvailableKb` | {'int': 1811} |
| `memTotalKb` | {'int': 1811} |
| `otherPssKb` | {'int': 1811} |
| `processes` | {'int': 1811} |
| `pssFallbackProcesses` | {'int': 1811} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
