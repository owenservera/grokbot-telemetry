# sandbox_telemetry_parse — 2026-11-28 00:45:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=662078 lines=1470
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1462 |
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
| `chromeBrowserPssKb` | {'int': 1462} |
| `chromeGpuPssKb` | {'int': 1462} |
| `chromeOtherPssKb` | {'int': 1462} |
| `chromeProcesses` | {'int': 1462} |
| `chromeProfiles` | {'int': 1462} |
| `chromeRendererMaxPssKb` | {'int': 1462} |
| `chromeRendererPssKb` | {'int': 1462} |
| `chromeRenderers` | {'int': 1462} |
| `chromeTabs` | {'int': 1462} |
| `chromeTabsProbedProfiles` | {'int': 1462} |
| `chromeUtilityPssKb` | {'int': 1462} |
| `desktopPssKb` | {'int': 1462} |
| `hostPssKb` | {'int': 1462} |
| `kind` | {'str': 1462} |
| `memAvailableKb` | {'int': 1462} |
| `memTotalKb` | {'int': 1462} |
| `otherPssKb` | {'int': 1462} |
| `processes` | {'int': 1462} |
| `pssFallbackProcesses` | {'int': 1462} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
