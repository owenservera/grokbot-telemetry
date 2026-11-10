# sandbox_telemetry_parse — 2026-11-10 16:23:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1218649 lines=2701
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2692 |
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
| `chromeBrowserPssKb` | {'int': 2692} |
| `chromeGpuPssKb` | {'int': 2692} |
| `chromeOtherPssKb` | {'int': 2692} |
| `chromeProcesses` | {'int': 2692} |
| `chromeProfiles` | {'int': 2692} |
| `chromeRendererMaxPssKb` | {'int': 2692} |
| `chromeRendererPssKb` | {'int': 2692} |
| `chromeRenderers` | {'int': 2692} |
| `chromeTabs` | {'int': 2692} |
| `chromeTabsProbedProfiles` | {'int': 2692} |
| `chromeUtilityPssKb` | {'int': 2692} |
| `desktopPssKb` | {'int': 2692} |
| `hostPssKb` | {'int': 2692} |
| `kind` | {'str': 2692} |
| `memAvailableKb` | {'int': 2692} |
| `memTotalKb` | {'int': 2692} |
| `otherPssKb` | {'int': 2692} |
| `processes` | {'int': 2692} |
| `pssFallbackProcesses` | {'int': 2692} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
