# sandbox_telemetry_parse — 2026-11-27 21:47:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=603704 lines=1341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1333 |
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
| `chromeBrowserPssKb` | {'int': 1333} |
| `chromeGpuPssKb` | {'int': 1333} |
| `chromeOtherPssKb` | {'int': 1333} |
| `chromeProcesses` | {'int': 1333} |
| `chromeProfiles` | {'int': 1333} |
| `chromeRendererMaxPssKb` | {'int': 1333} |
| `chromeRendererPssKb` | {'int': 1333} |
| `chromeRenderers` | {'int': 1333} |
| `chromeTabs` | {'int': 1333} |
| `chromeTabsProbedProfiles` | {'int': 1333} |
| `chromeUtilityPssKb` | {'int': 1333} |
| `desktopPssKb` | {'int': 1333} |
| `hostPssKb` | {'int': 1333} |
| `kind` | {'str': 1333} |
| `memAvailableKb` | {'int': 1333} |
| `memTotalKb` | {'int': 1333} |
| `otherPssKb` | {'int': 1333} |
| `processes` | {'int': 1333} |
| `pssFallbackProcesses` | {'int': 1333} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
