# sandbox_telemetry_parse — 2026-11-09 10:11:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=608188 lines=1352
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1343 |
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
| `chromeBrowserPssKb` | {'int': 1343} |
| `chromeGpuPssKb` | {'int': 1343} |
| `chromeOtherPssKb` | {'int': 1343} |
| `chromeProcesses` | {'int': 1343} |
| `chromeProfiles` | {'int': 1343} |
| `chromeRendererMaxPssKb` | {'int': 1343} |
| `chromeRendererPssKb` | {'int': 1343} |
| `chromeRenderers` | {'int': 1343} |
| `chromeTabs` | {'int': 1343} |
| `chromeTabsProbedProfiles` | {'int': 1343} |
| `chromeUtilityPssKb` | {'int': 1343} |
| `desktopPssKb` | {'int': 1343} |
| `hostPssKb` | {'int': 1343} |
| `kind` | {'str': 1343} |
| `memAvailableKb` | {'int': 1343} |
| `memTotalKb` | {'int': 1343} |
| `otherPssKb` | {'int': 1343} |
| `processes` | {'int': 1343} |
| `pssFallbackProcesses` | {'int': 1343} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
