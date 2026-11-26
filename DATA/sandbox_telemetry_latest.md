# sandbox_telemetry_parse — 2026-11-26 05:58:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3106124 lines=6880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6865 |
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
| `chromeBrowserPssKb` | {'int': 6865} |
| `chromeGpuPssKb` | {'int': 6865} |
| `chromeOtherPssKb` | {'int': 6865} |
| `chromeProcesses` | {'int': 6865} |
| `chromeProfiles` | {'int': 6865} |
| `chromeRendererMaxPssKb` | {'int': 6865} |
| `chromeRendererPssKb` | {'int': 6865} |
| `chromeRenderers` | {'int': 6865} |
| `chromeTabs` | {'int': 6865} |
| `chromeTabsProbedProfiles` | {'int': 6865} |
| `chromeUtilityPssKb` | {'int': 6865} |
| `desktopPssKb` | {'int': 6865} |
| `hostPssKb` | {'int': 6865} |
| `kind` | {'str': 6865} |
| `memAvailableKb` | {'int': 6865} |
| `memTotalKb` | {'int': 6865} |
| `otherPssKb` | {'int': 6865} |
| `processes` | {'int': 6865} |
| `pssFallbackProcesses` | {'int': 6865} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
