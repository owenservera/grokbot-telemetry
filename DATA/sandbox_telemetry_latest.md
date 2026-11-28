# sandbox_telemetry_parse — 2026-11-28 12:55:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=893703 lines=1982
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1974 |
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
| `chromeBrowserPssKb` | {'int': 1974} |
| `chromeGpuPssKb` | {'int': 1974} |
| `chromeOtherPssKb` | {'int': 1974} |
| `chromeProcesses` | {'int': 1974} |
| `chromeProfiles` | {'int': 1974} |
| `chromeRendererMaxPssKb` | {'int': 1974} |
| `chromeRendererPssKb` | {'int': 1974} |
| `chromeRenderers` | {'int': 1974} |
| `chromeTabs` | {'int': 1974} |
| `chromeTabsProbedProfiles` | {'int': 1974} |
| `chromeUtilityPssKb` | {'int': 1974} |
| `desktopPssKb` | {'int': 1974} |
| `hostPssKb` | {'int': 1974} |
| `kind` | {'str': 1974} |
| `memAvailableKb` | {'int': 1974} |
| `memTotalKb` | {'int': 1974} |
| `otherPssKb` | {'int': 1974} |
| `processes` | {'int': 1974} |
| `pssFallbackProcesses` | {'int': 1974} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
