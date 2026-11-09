# sandbox_telemetry_parse — 2026-11-09 18:26:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=787896 lines=1749
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1740 |
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
| `chromeBrowserPssKb` | {'int': 1740} |
| `chromeGpuPssKb` | {'int': 1740} |
| `chromeOtherPssKb` | {'int': 1740} |
| `chromeProcesses` | {'int': 1740} |
| `chromeProfiles` | {'int': 1740} |
| `chromeRendererMaxPssKb` | {'int': 1740} |
| `chromeRendererPssKb` | {'int': 1740} |
| `chromeRenderers` | {'int': 1740} |
| `chromeTabs` | {'int': 1740} |
| `chromeTabsProbedProfiles` | {'int': 1740} |
| `chromeUtilityPssKb` | {'int': 1740} |
| `desktopPssKb` | {'int': 1740} |
| `hostPssKb` | {'int': 1740} |
| `kind` | {'str': 1740} |
| `memAvailableKb` | {'int': 1740} |
| `memTotalKb` | {'int': 1740} |
| `otherPssKb` | {'int': 1740} |
| `processes` | {'int': 1740} |
| `pssFallbackProcesses` | {'int': 1740} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
