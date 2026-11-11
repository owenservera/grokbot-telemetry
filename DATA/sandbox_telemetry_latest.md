# sandbox_telemetry_parse — 2026-11-11 19:16:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1777009 lines=3935
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3926 |
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
| `chromeBrowserPssKb` | {'int': 3926} |
| `chromeGpuPssKb` | {'int': 3926} |
| `chromeOtherPssKb` | {'int': 3926} |
| `chromeProcesses` | {'int': 3926} |
| `chromeProfiles` | {'int': 3926} |
| `chromeRendererMaxPssKb` | {'int': 3926} |
| `chromeRendererPssKb` | {'int': 3926} |
| `chromeRenderers` | {'int': 3926} |
| `chromeTabs` | {'int': 3926} |
| `chromeTabsProbedProfiles` | {'int': 3926} |
| `chromeUtilityPssKb` | {'int': 3926} |
| `desktopPssKb` | {'int': 3926} |
| `hostPssKb` | {'int': 3926} |
| `kind` | {'str': 3926} |
| `memAvailableKb` | {'int': 3926} |
| `memTotalKb` | {'int': 3926} |
| `otherPssKb` | {'int': 3926} |
| `processes` | {'int': 3926} |
| `pssFallbackProcesses` | {'int': 3926} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
