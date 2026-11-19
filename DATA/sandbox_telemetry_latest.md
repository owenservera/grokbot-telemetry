# sandbox_telemetry_parse — 2026-11-19 16:23:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1349873 lines=2994
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2983 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 2983} |
| `chromeGpuPssKb` | {'int': 2983} |
| `chromeOtherPssKb` | {'int': 2983} |
| `chromeProcesses` | {'int': 2983} |
| `chromeProfiles` | {'int': 2983} |
| `chromeRendererMaxPssKb` | {'int': 2983} |
| `chromeRendererPssKb` | {'int': 2983} |
| `chromeRenderers` | {'int': 2983} |
| `chromeTabs` | {'int': 2983} |
| `chromeTabsProbedProfiles` | {'int': 2983} |
| `chromeUtilityPssKb` | {'int': 2983} |
| `desktopPssKb` | {'int': 2983} |
| `hostPssKb` | {'int': 2983} |
| `kind` | {'str': 2983} |
| `memAvailableKb` | {'int': 2983} |
| `memTotalKb` | {'int': 2983} |
| `otherPssKb` | {'int': 2983} |
| `processes` | {'int': 2983} |
| `pssFallbackProcesses` | {'int': 2983} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
