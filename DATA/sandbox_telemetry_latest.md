# sandbox_telemetry_parse — 2026-11-23 22:26:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2016544 lines=4471
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4456 |
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
| `chromeBrowserPssKb` | {'int': 4456} |
| `chromeGpuPssKb` | {'int': 4456} |
| `chromeOtherPssKb` | {'int': 4456} |
| `chromeProcesses` | {'int': 4456} |
| `chromeProfiles` | {'int': 4456} |
| `chromeRendererMaxPssKb` | {'int': 4456} |
| `chromeRendererPssKb` | {'int': 4456} |
| `chromeRenderers` | {'int': 4456} |
| `chromeTabs` | {'int': 4456} |
| `chromeTabsProbedProfiles` | {'int': 4456} |
| `chromeUtilityPssKb` | {'int': 4456} |
| `desktopPssKb` | {'int': 4456} |
| `hostPssKb` | {'int': 4456} |
| `kind` | {'str': 4456} |
| `memAvailableKb` | {'int': 4456} |
| `memTotalKb` | {'int': 4456} |
| `otherPssKb` | {'int': 4456} |
| `processes` | {'int': 4456} |
| `pssFallbackProcesses` | {'int': 4456} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
