# sandbox_telemetry_parse — 2026-11-24 20:55:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2445402 lines=5419
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5404 |
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
| `chromeBrowserPssKb` | {'int': 5404} |
| `chromeGpuPssKb` | {'int': 5404} |
| `chromeOtherPssKb` | {'int': 5404} |
| `chromeProcesses` | {'int': 5404} |
| `chromeProfiles` | {'int': 5404} |
| `chromeRendererMaxPssKb` | {'int': 5404} |
| `chromeRendererPssKb` | {'int': 5404} |
| `chromeRenderers` | {'int': 5404} |
| `chromeTabs` | {'int': 5404} |
| `chromeTabsProbedProfiles` | {'int': 5404} |
| `chromeUtilityPssKb` | {'int': 5404} |
| `desktopPssKb` | {'int': 5404} |
| `hostPssKb` | {'int': 5404} |
| `kind` | {'str': 5404} |
| `memAvailableKb` | {'int': 5404} |
| `memTotalKb` | {'int': 5404} |
| `otherPssKb` | {'int': 5404} |
| `processes` | {'int': 5404} |
| `pssFallbackProcesses` | {'int': 5404} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
