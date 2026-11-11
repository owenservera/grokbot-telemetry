# sandbox_telemetry_parse — 2026-11-11 10:56:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1594633 lines=3532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3523 |
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
