# sandbox_telemetry_parse — 2026-11-28 01:23:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=672474 lines=1493
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1485 |
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
| `chromeBrowserPssKb` | {'int': 1485} |
| `chromeGpuPssKb` | {'int': 1485} |
| `chromeOtherPssKb` | {'int': 1485} |
| `chromeProcesses` | {'int': 1485} |
| `chromeProfiles` | {'int': 1485} |
| `chromeRendererMaxPssKb` | {'int': 1485} |
| `chromeRendererPssKb` | {'int': 1485} |
| `chromeRenderers` | {'int': 1485} |
| `chromeTabs` | {'int': 1485} |
| `chromeTabsProbedProfiles` | {'int': 1485} |
| `chromeUtilityPssKb` | {'int': 1485} |
| `desktopPssKb` | {'int': 1485} |
| `hostPssKb` | {'int': 1485} |
| `kind` | {'str': 1485} |
| `memAvailableKb` | {'int': 1485} |
| `memTotalKb` | {'int': 1485} |
| `otherPssKb` | {'int': 1485} |
| `processes` | {'int': 1485} |
| `pssFallbackProcesses` | {'int': 1485} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
