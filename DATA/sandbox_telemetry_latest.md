# sandbox_telemetry_parse — 2026-11-16 14:30:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=4614 lines=16
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 9 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 9} |
| `chromeGpuPssKb` | {'int': 9} |
| `chromeOtherPssKb` | {'int': 9} |
| `chromeProcesses` | {'int': 9} |
| `chromeProfiles` | {'int': 9} |
| `chromeRendererMaxPssKb` | {'int': 9} |
| `chromeRendererPssKb` | {'int': 9} |
| `chromeRenderers` | {'int': 9} |
| `chromeTabs` | {'int': 9} |
| `chromeTabsProbedProfiles` | {'int': 9} |
| `chromeUtilityPssKb` | {'int': 9} |
| `desktopPssKb` | {'int': 9} |
| `hostPssKb` | {'int': 9} |
| `kind` | {'str': 9} |
| `memAvailableKb` | {'int': 9} |
| `memTotalKb` | {'int': 9} |
| `otherPssKb` | {'int': 9} |
| `processes` | {'int': 9} |
| `pssFallbackProcesses` | {'int': 9} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
