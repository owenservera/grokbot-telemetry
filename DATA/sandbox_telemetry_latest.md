# sandbox_telemetry_parse — 2026-11-07 00:44:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=237296 lines=532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 523 |
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
| `chromeBrowserPssKb` | {'int': 523} |
| `chromeGpuPssKb` | {'int': 523} |
| `chromeOtherPssKb` | {'int': 523} |
| `chromeProcesses` | {'int': 523} |
| `chromeProfiles` | {'int': 523} |
| `chromeRendererMaxPssKb` | {'int': 523} |
| `chromeRendererPssKb` | {'int': 523} |
| `chromeRenderers` | {'int': 523} |
| `chromeTabs` | {'int': 523} |
| `chromeTabsProbedProfiles` | {'int': 523} |
| `chromeUtilityPssKb` | {'int': 523} |
| `desktopPssKb` | {'int': 523} |
| `hostPssKb` | {'int': 523} |
| `kind` | {'str': 523} |
| `memAvailableKb` | {'int': 523} |
| `memTotalKb` | {'int': 523} |
| `otherPssKb` | {'int': 523} |
| `processes` | {'int': 523} |
| `pssFallbackProcesses` | {'int': 523} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
