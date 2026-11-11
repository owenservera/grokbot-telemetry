# sandbox_telemetry_parse — 2026-11-11 06:40:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1509588 lines=3344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3335 |
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
| `chromeBrowserPssKb` | {'int': 3335} |
| `chromeGpuPssKb` | {'int': 3335} |
| `chromeOtherPssKb` | {'int': 3335} |
| `chromeProcesses` | {'int': 3335} |
| `chromeProfiles` | {'int': 3335} |
| `chromeRendererMaxPssKb` | {'int': 3335} |
| `chromeRendererPssKb` | {'int': 3335} |
| `chromeRenderers` | {'int': 3335} |
| `chromeTabs` | {'int': 3335} |
| `chromeTabsProbedProfiles` | {'int': 3335} |
| `chromeUtilityPssKb` | {'int': 3335} |
| `desktopPssKb` | {'int': 3335} |
| `hostPssKb` | {'int': 3335} |
| `kind` | {'str': 3335} |
| `memAvailableKb` | {'int': 3335} |
| `memTotalKb` | {'int': 3335} |
| `otherPssKb` | {'int': 3335} |
| `processes` | {'int': 3335} |
| `pssFallbackProcesses` | {'int': 3335} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
