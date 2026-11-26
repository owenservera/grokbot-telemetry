# sandbox_telemetry_parse — 2026-11-26 08:04:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3154984 lines=6988
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6973 |
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
| `chromeBrowserPssKb` | {'int': 6973} |
| `chromeGpuPssKb` | {'int': 6973} |
| `chromeOtherPssKb` | {'int': 6973} |
| `chromeProcesses` | {'int': 6973} |
| `chromeProfiles` | {'int': 6973} |
| `chromeRendererMaxPssKb` | {'int': 6973} |
| `chromeRendererPssKb` | {'int': 6973} |
| `chromeRenderers` | {'int': 6973} |
| `chromeTabs` | {'int': 6973} |
| `chromeTabsProbedProfiles` | {'int': 6973} |
| `chromeUtilityPssKb` | {'int': 6973} |
| `desktopPssKb` | {'int': 6973} |
| `hostPssKb` | {'int': 6973} |
| `kind` | {'str': 6973} |
| `memAvailableKb` | {'int': 6973} |
| `memTotalKb` | {'int': 6973} |
| `otherPssKb` | {'int': 6973} |
| `processes` | {'int': 6973} |
| `pssFallbackProcesses` | {'int': 6973} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
