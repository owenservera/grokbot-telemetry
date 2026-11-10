# sandbox_telemetry_parse — 2026-11-10 06:21:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1017233 lines=2256
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2247 |
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
| `chromeBrowserPssKb` | {'int': 2247} |
| `chromeGpuPssKb` | {'int': 2247} |
| `chromeOtherPssKb` | {'int': 2247} |
| `chromeProcesses` | {'int': 2247} |
| `chromeProfiles` | {'int': 2247} |
| `chromeRendererMaxPssKb` | {'int': 2247} |
| `chromeRendererPssKb` | {'int': 2247} |
| `chromeRenderers` | {'int': 2247} |
| `chromeTabs` | {'int': 2247} |
| `chromeTabsProbedProfiles` | {'int': 2247} |
| `chromeUtilityPssKb` | {'int': 2247} |
| `desktopPssKb` | {'int': 2247} |
| `hostPssKb` | {'int': 2247} |
| `kind` | {'str': 2247} |
| `memAvailableKb` | {'int': 2247} |
| `memTotalKb` | {'int': 2247} |
| `otherPssKb` | {'int': 2247} |
| `processes` | {'int': 2247} |
| `pssFallbackProcesses` | {'int': 2247} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
