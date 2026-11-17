# sandbox_telemetry_parse — 2026-11-17 23:41:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=586118 lines=1302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1295 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1295} |
| `chromeGpuPssKb` | {'int': 1295} |
| `chromeOtherPssKb` | {'int': 1295} |
| `chromeProcesses` | {'int': 1295} |
| `chromeProfiles` | {'int': 1295} |
| `chromeRendererMaxPssKb` | {'int': 1295} |
| `chromeRendererPssKb` | {'int': 1295} |
| `chromeRenderers` | {'int': 1295} |
| `chromeTabs` | {'int': 1295} |
| `chromeTabsProbedProfiles` | {'int': 1295} |
| `chromeUtilityPssKb` | {'int': 1295} |
| `desktopPssKb` | {'int': 1295} |
| `hostPssKb` | {'int': 1295} |
| `kind` | {'str': 1295} |
| `memAvailableKb` | {'int': 1295} |
| `memTotalKb` | {'int': 1295} |
| `otherPssKb` | {'int': 1295} |
| `processes` | {'int': 1295} |
| `pssFallbackProcesses` | {'int': 1295} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
