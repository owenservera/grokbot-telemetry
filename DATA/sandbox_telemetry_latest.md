# sandbox_telemetry_parse — 2026-11-25 01:55:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2543078 lines=5635
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5620 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5620} |
| `chromeGpuPssKb` | {'int': 5620} |
| `chromeOtherPssKb` | {'int': 5620} |
| `chromeProcesses` | {'int': 5620} |
| `chromeProfiles` | {'int': 5620} |
| `chromeRendererMaxPssKb` | {'int': 5620} |
| `chromeRendererPssKb` | {'int': 5620} |
| `chromeRenderers` | {'int': 5620} |
| `chromeTabs` | {'int': 5620} |
| `chromeTabsProbedProfiles` | {'int': 5620} |
| `chromeUtilityPssKb` | {'int': 5620} |
| `desktopPssKb` | {'int': 5620} |
| `hostPssKb` | {'int': 5620} |
| `kind` | {'str': 5620} |
| `memAvailableKb` | {'int': 5620} |
| `memTotalKb` | {'int': 5620} |
| `otherPssKb` | {'int': 5620} |
| `processes` | {'int': 5620} |
| `pssFallbackProcesses` | {'int': 5620} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
