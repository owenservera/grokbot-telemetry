# sandbox_telemetry_parse — 2026-11-20 05:36:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1589138 lines=3523
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3512 |
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
| `chromeBrowserPssKb` | {'int': 3512} |
| `chromeGpuPssKb` | {'int': 3512} |
| `chromeOtherPssKb` | {'int': 3512} |
| `chromeProcesses` | {'int': 3512} |
| `chromeProfiles` | {'int': 3512} |
| `chromeRendererMaxPssKb` | {'int': 3512} |
| `chromeRendererPssKb` | {'int': 3512} |
| `chromeRenderers` | {'int': 3512} |
| `chromeTabs` | {'int': 3512} |
| `chromeTabsProbedProfiles` | {'int': 3512} |
| `chromeUtilityPssKb` | {'int': 3512} |
| `desktopPssKb` | {'int': 3512} |
| `hostPssKb` | {'int': 3512} |
| `kind` | {'str': 3512} |
| `memAvailableKb` | {'int': 3512} |
| `memTotalKb` | {'int': 3512} |
| `otherPssKb` | {'int': 3512} |
| `processes` | {'int': 3512} |
| `pssFallbackProcesses` | {'int': 3512} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
