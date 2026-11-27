# sandbox_telemetry_parse — 2026-11-27 21:58:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=608229 lines=1351
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1343 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
