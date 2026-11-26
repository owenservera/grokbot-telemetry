# sandbox_telemetry_parse — 2026-11-26 08:05:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3155436 lines=6989
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6974 |
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
| `chromeBrowserPssKb` | {'int': 6974} |
| `chromeGpuPssKb` | {'int': 6974} |
| `chromeOtherPssKb` | {'int': 6974} |
| `chromeProcesses` | {'int': 6974} |
| `chromeProfiles` | {'int': 6974} |
| `chromeRendererMaxPssKb` | {'int': 6974} |
| `chromeRendererPssKb` | {'int': 6974} |
| `chromeRenderers` | {'int': 6974} |
| `chromeTabs` | {'int': 6974} |
| `chromeTabsProbedProfiles` | {'int': 6974} |
| `chromeUtilityPssKb` | {'int': 6974} |
| `desktopPssKb` | {'int': 6974} |
| `hostPssKb` | {'int': 6974} |
| `kind` | {'str': 6974} |
| `memAvailableKb` | {'int': 6974} |
| `memTotalKb` | {'int': 6974} |
| `otherPssKb` | {'int': 6974} |
| `processes` | {'int': 6974} |
| `pssFallbackProcesses` | {'int': 6974} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
