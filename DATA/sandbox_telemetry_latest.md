# sandbox_telemetry_parse — 2026-11-20 17:23:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1814081 lines=4022
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4009 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4009} |
| `chromeGpuPssKb` | {'int': 4009} |
| `chromeOtherPssKb` | {'int': 4009} |
| `chromeProcesses` | {'int': 4009} |
| `chromeProfiles` | {'int': 4009} |
| `chromeRendererMaxPssKb` | {'int': 4009} |
| `chromeRendererPssKb` | {'int': 4009} |
| `chromeRenderers` | {'int': 4009} |
| `chromeTabs` | {'int': 4009} |
| `chromeTabsProbedProfiles` | {'int': 4009} |
| `chromeUtilityPssKb` | {'int': 4009} |
| `desktopPssKb` | {'int': 4009} |
| `hostPssKb` | {'int': 4009} |
| `kind` | {'str': 4009} |
| `memAvailableKb` | {'int': 4009} |
| `memTotalKb` | {'int': 4009} |
| `otherPssKb` | {'int': 4009} |
| `processes` | {'int': 4009} |
| `pssFallbackProcesses` | {'int': 4009} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
