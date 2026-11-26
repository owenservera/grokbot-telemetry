# sandbox_telemetry_parse — 2026-11-26 05:35:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3097983 lines=6862
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6847 |
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
| `chromeBrowserPssKb` | {'int': 6847} |
| `chromeGpuPssKb` | {'int': 6847} |
| `chromeOtherPssKb` | {'int': 6847} |
| `chromeProcesses` | {'int': 6847} |
| `chromeProfiles` | {'int': 6847} |
| `chromeRendererMaxPssKb` | {'int': 6847} |
| `chromeRendererPssKb` | {'int': 6847} |
| `chromeRenderers` | {'int': 6847} |
| `chromeTabs` | {'int': 6847} |
| `chromeTabsProbedProfiles` | {'int': 6847} |
| `chromeUtilityPssKb` | {'int': 6847} |
| `desktopPssKb` | {'int': 6847} |
| `hostPssKb` | {'int': 6847} |
| `kind` | {'str': 6847} |
| `memAvailableKb` | {'int': 6847} |
| `memTotalKb` | {'int': 6847} |
| `otherPssKb` | {'int': 6847} |
| `processes` | {'int': 6847} |
| `pssFallbackProcesses` | {'int': 6847} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
