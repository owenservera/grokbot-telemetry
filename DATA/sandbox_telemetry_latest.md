# sandbox_telemetry_parse — 2026-11-25 20:58:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2921133 lines=6471
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6456 |
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
| `chromeBrowserPssKb` | {'int': 6456} |
| `chromeGpuPssKb` | {'int': 6456} |
| `chromeOtherPssKb` | {'int': 6456} |
| `chromeProcesses` | {'int': 6456} |
| `chromeProfiles` | {'int': 6456} |
| `chromeRendererMaxPssKb` | {'int': 6456} |
| `chromeRendererPssKb` | {'int': 6456} |
| `chromeRenderers` | {'int': 6456} |
| `chromeTabs` | {'int': 6456} |
| `chromeTabsProbedProfiles` | {'int': 6456} |
| `chromeUtilityPssKb` | {'int': 6456} |
| `desktopPssKb` | {'int': 6456} |
| `hostPssKb` | {'int': 6456} |
| `kind` | {'str': 6456} |
| `memAvailableKb` | {'int': 6456} |
| `memTotalKb` | {'int': 6456} |
| `otherPssKb` | {'int': 6456} |
| `processes` | {'int': 6456} |
| `pssFallbackProcesses` | {'int': 6456} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
