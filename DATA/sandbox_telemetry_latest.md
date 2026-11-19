# sandbox_telemetry_parse — 2026-11-19 10:58:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1239760 lines=2749
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2740 |
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
| `chromeBrowserPssKb` | {'int': 2740} |
| `chromeGpuPssKb` | {'int': 2740} |
| `chromeOtherPssKb` | {'int': 2740} |
| `chromeProcesses` | {'int': 2740} |
| `chromeProfiles` | {'int': 2740} |
| `chromeRendererMaxPssKb` | {'int': 2740} |
| `chromeRendererPssKb` | {'int': 2740} |
| `chromeRenderers` | {'int': 2740} |
| `chromeTabs` | {'int': 2740} |
| `chromeTabsProbedProfiles` | {'int': 2740} |
| `chromeUtilityPssKb` | {'int': 2740} |
| `desktopPssKb` | {'int': 2740} |
| `hostPssKb` | {'int': 2740} |
| `kind` | {'str': 2740} |
| `memAvailableKb` | {'int': 2740} |
| `memTotalKb` | {'int': 2740} |
| `otherPssKb` | {'int': 2740} |
| `processes` | {'int': 2740} |
| `pssFallbackProcesses` | {'int': 2740} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
