# sandbox_telemetry_parse — 2026-11-07 11:32:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=440349 lines=981
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 972 |
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
| `chromeBrowserPssKb` | {'int': 972} |
| `chromeGpuPssKb` | {'int': 972} |
| `chromeOtherPssKb` | {'int': 972} |
| `chromeProcesses` | {'int': 972} |
| `chromeProfiles` | {'int': 972} |
| `chromeRendererMaxPssKb` | {'int': 972} |
| `chromeRendererPssKb` | {'int': 972} |
| `chromeRenderers` | {'int': 972} |
| `chromeTabs` | {'int': 972} |
| `chromeTabsProbedProfiles` | {'int': 972} |
| `chromeUtilityPssKb` | {'int': 972} |
| `desktopPssKb` | {'int': 972} |
| `hostPssKb` | {'int': 972} |
| `kind` | {'str': 972} |
| `memAvailableKb` | {'int': 972} |
| `memTotalKb` | {'int': 972} |
| `otherPssKb` | {'int': 972} |
| `processes` | {'int': 972} |
| `pssFallbackProcesses` | {'int': 972} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
