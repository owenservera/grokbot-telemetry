# sandbox_telemetry_parse — 2026-11-20 17:12:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1811363 lines=4016
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4003 |
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
| `chromeBrowserPssKb` | {'int': 4003} |
| `chromeGpuPssKb` | {'int': 4003} |
| `chromeOtherPssKb` | {'int': 4003} |
| `chromeProcesses` | {'int': 4003} |
| `chromeProfiles` | {'int': 4003} |
| `chromeRendererMaxPssKb` | {'int': 4003} |
| `chromeRendererPssKb` | {'int': 4003} |
| `chromeRenderers` | {'int': 4003} |
| `chromeTabs` | {'int': 4003} |
| `chromeTabsProbedProfiles` | {'int': 4003} |
| `chromeUtilityPssKb` | {'int': 4003} |
| `desktopPssKb` | {'int': 4003} |
| `hostPssKb` | {'int': 4003} |
| `kind` | {'str': 4003} |
| `memAvailableKb` | {'int': 4003} |
| `memTotalKb` | {'int': 4003} |
| `otherPssKb` | {'int': 4003} |
| `processes` | {'int': 4003} |
| `pssFallbackProcesses` | {'int': 4003} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
