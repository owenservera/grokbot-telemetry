# sandbox_telemetry_parse — 2026-11-07 16:28:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=539862 lines=1201
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1192 |
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
| `chromeBrowserPssKb` | {'int': 1192} |
| `chromeGpuPssKb` | {'int': 1192} |
| `chromeOtherPssKb` | {'int': 1192} |
| `chromeProcesses` | {'int': 1192} |
| `chromeProfiles` | {'int': 1192} |
| `chromeRendererMaxPssKb` | {'int': 1192} |
| `chromeRendererPssKb` | {'int': 1192} |
| `chromeRenderers` | {'int': 1192} |
| `chromeTabs` | {'int': 1192} |
| `chromeTabsProbedProfiles` | {'int': 1192} |
| `chromeUtilityPssKb` | {'int': 1192} |
| `desktopPssKb` | {'int': 1192} |
| `hostPssKb` | {'int': 1192} |
| `kind` | {'str': 1192} |
| `memAvailableKb` | {'int': 1192} |
| `memTotalKb` | {'int': 1192} |
| `otherPssKb` | {'int': 1192} |
| `processes` | {'int': 1192} |
| `pssFallbackProcesses` | {'int': 1192} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
