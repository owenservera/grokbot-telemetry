# sandbox_telemetry_parse — 2026-11-11 12:24:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1629495 lines=3609
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3600 |
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
| `chromeBrowserPssKb` | {'int': 3600} |
| `chromeGpuPssKb` | {'int': 3600} |
| `chromeOtherPssKb` | {'int': 3600} |
| `chromeProcesses` | {'int': 3600} |
| `chromeProfiles` | {'int': 3600} |
| `chromeRendererMaxPssKb` | {'int': 3600} |
| `chromeRendererPssKb` | {'int': 3600} |
| `chromeRenderers` | {'int': 3600} |
| `chromeTabs` | {'int': 3600} |
| `chromeTabsProbedProfiles` | {'int': 3600} |
| `chromeUtilityPssKb` | {'int': 3600} |
| `desktopPssKb` | {'int': 3600} |
| `hostPssKb` | {'int': 3600} |
| `kind` | {'str': 3600} |
| `memAvailableKb` | {'int': 3600} |
| `memTotalKb` | {'int': 3600} |
| `otherPssKb` | {'int': 3600} |
| `processes` | {'int': 3600} |
| `pssFallbackProcesses` | {'int': 3600} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
