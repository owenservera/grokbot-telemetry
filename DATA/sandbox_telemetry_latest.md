# sandbox_telemetry_parse — 2026-11-26 07:45:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3146848 lines=6970
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6955 |
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
| `chromeBrowserPssKb` | {'int': 6955} |
| `chromeGpuPssKb` | {'int': 6955} |
| `chromeOtherPssKb` | {'int': 6955} |
| `chromeProcesses` | {'int': 6955} |
| `chromeProfiles` | {'int': 6955} |
| `chromeRendererMaxPssKb` | {'int': 6955} |
| `chromeRendererPssKb` | {'int': 6955} |
| `chromeRenderers` | {'int': 6955} |
| `chromeTabs` | {'int': 6955} |
| `chromeTabsProbedProfiles` | {'int': 6955} |
| `chromeUtilityPssKb` | {'int': 6955} |
| `desktopPssKb` | {'int': 6955} |
| `hostPssKb` | {'int': 6955} |
| `kind` | {'str': 6955} |
| `memAvailableKb` | {'int': 6955} |
| `memTotalKb` | {'int': 6955} |
| `otherPssKb` | {'int': 6955} |
| `processes` | {'int': 6955} |
| `pssFallbackProcesses` | {'int': 6955} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
