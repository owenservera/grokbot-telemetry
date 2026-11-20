# sandbox_telemetry_parse — 2026-11-20 13:31:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1734734 lines=3845
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3834 |
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
| `chromeBrowserPssKb` | {'int': 3834} |
| `chromeGpuPssKb` | {'int': 3834} |
| `chromeOtherPssKb` | {'int': 3834} |
| `chromeProcesses` | {'int': 3834} |
| `chromeProfiles` | {'int': 3834} |
| `chromeRendererMaxPssKb` | {'int': 3834} |
| `chromeRendererPssKb` | {'int': 3834} |
| `chromeRenderers` | {'int': 3834} |
| `chromeTabs` | {'int': 3834} |
| `chromeTabsProbedProfiles` | {'int': 3834} |
| `chromeUtilityPssKb` | {'int': 3834} |
| `desktopPssKb` | {'int': 3834} |
| `hostPssKb` | {'int': 3834} |
| `kind` | {'str': 3834} |
| `memAvailableKb` | {'int': 3834} |
| `memTotalKb` | {'int': 3834} |
| `otherPssKb` | {'int': 3834} |
| `processes` | {'int': 3834} |
| `pssFallbackProcesses` | {'int': 3834} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
