# sandbox_telemetry_parse — 2026-11-20 00:45:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1512750 lines=3354
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3343 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3343} |
| `chromeGpuPssKb` | {'int': 3343} |
| `chromeOtherPssKb` | {'int': 3343} |
| `chromeProcesses` | {'int': 3343} |
| `chromeProfiles` | {'int': 3343} |
| `chromeRendererMaxPssKb` | {'int': 3343} |
| `chromeRendererPssKb` | {'int': 3343} |
| `chromeRenderers` | {'int': 3343} |
| `chromeTabs` | {'int': 3343} |
| `chromeTabsProbedProfiles` | {'int': 3343} |
| `chromeUtilityPssKb` | {'int': 3343} |
| `desktopPssKb` | {'int': 3343} |
| `hostPssKb` | {'int': 3343} |
| `kind` | {'str': 3343} |
| `memAvailableKb` | {'int': 3343} |
| `memTotalKb` | {'int': 3343} |
| `otherPssKb` | {'int': 3343} |
| `processes` | {'int': 3343} |
| `pssFallbackProcesses` | {'int': 3343} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
