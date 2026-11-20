# sandbox_telemetry_parse — 2026-11-20 05:58:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1594110 lines=3534
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3523 |
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
| `chromeBrowserPssKb` | {'int': 3523} |
| `chromeGpuPssKb` | {'int': 3523} |
| `chromeOtherPssKb` | {'int': 3523} |
| `chromeProcesses` | {'int': 3523} |
| `chromeProfiles` | {'int': 3523} |
| `chromeRendererMaxPssKb` | {'int': 3523} |
| `chromeRendererPssKb` | {'int': 3523} |
| `chromeRenderers` | {'int': 3523} |
| `chromeTabs` | {'int': 3523} |
| `chromeTabsProbedProfiles` | {'int': 3523} |
| `chromeUtilityPssKb` | {'int': 3523} |
| `desktopPssKb` | {'int': 3523} |
| `hostPssKb` | {'int': 3523} |
| `kind` | {'str': 3523} |
| `memAvailableKb` | {'int': 3523} |
| `memTotalKb` | {'int': 3523} |
| `otherPssKb` | {'int': 3523} |
| `processes` | {'int': 3523} |
| `pssFallbackProcesses` | {'int': 3523} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
