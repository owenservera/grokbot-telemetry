# sandbox_telemetry_parse — 2026-11-26 17:17:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3326 lines=14
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6 |
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
| `chromeBrowserPssKb` | {'int': 6} |
| `chromeGpuPssKb` | {'int': 6} |
| `chromeOtherPssKb` | {'int': 6} |
| `chromeProcesses` | {'int': 6} |
| `chromeProfiles` | {'int': 6} |
| `chromeRendererMaxPssKb` | {'int': 6} |
| `chromeRendererPssKb` | {'int': 6} |
| `chromeRenderers` | {'int': 6} |
| `chromeTabs` | {'int': 6} |
| `chromeTabsProbedProfiles` | {'int': 6} |
| `chromeUtilityPssKb` | {'int': 6} |
| `desktopPssKb` | {'int': 6} |
| `hostPssKb` | {'int': 6} |
| `kind` | {'str': 6} |
| `memAvailableKb` | {'int': 6} |
| `memTotalKb` | {'int': 6} |
| `otherPssKb` | {'int': 6} |
| `processes` | {'int': 6} |
| `pssFallbackProcesses` | {'int': 6} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
