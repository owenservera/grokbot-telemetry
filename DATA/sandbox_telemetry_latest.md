# sandbox_telemetry_parse — 2026-11-25 18:26:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2870028 lines=6358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6343 |
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
| `chromeBrowserPssKb` | {'int': 6343} |
| `chromeGpuPssKb` | {'int': 6343} |
| `chromeOtherPssKb` | {'int': 6343} |
| `chromeProcesses` | {'int': 6343} |
| `chromeProfiles` | {'int': 6343} |
| `chromeRendererMaxPssKb` | {'int': 6343} |
| `chromeRendererPssKb` | {'int': 6343} |
| `chromeRenderers` | {'int': 6343} |
| `chromeTabs` | {'int': 6343} |
| `chromeTabsProbedProfiles` | {'int': 6343} |
| `chromeUtilityPssKb` | {'int': 6343} |
| `desktopPssKb` | {'int': 6343} |
| `hostPssKb` | {'int': 6343} |
| `kind` | {'str': 6343} |
| `memAvailableKb` | {'int': 6343} |
| `memTotalKb` | {'int': 6343} |
| `otherPssKb` | {'int': 6343} |
| `processes` | {'int': 6343} |
| `pssFallbackProcesses` | {'int': 6343} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
