# sandbox_telemetry_parse — 2026-11-11 05:32:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1489696 lines=3300
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3291 |
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
| `chromeBrowserPssKb` | {'int': 3291} |
| `chromeGpuPssKb` | {'int': 3291} |
| `chromeOtherPssKb` | {'int': 3291} |
| `chromeProcesses` | {'int': 3291} |
| `chromeProfiles` | {'int': 3291} |
| `chromeRendererMaxPssKb` | {'int': 3291} |
| `chromeRendererPssKb` | {'int': 3291} |
| `chromeRenderers` | {'int': 3291} |
| `chromeTabs` | {'int': 3291} |
| `chromeTabsProbedProfiles` | {'int': 3291} |
| `chromeUtilityPssKb` | {'int': 3291} |
| `desktopPssKb` | {'int': 3291} |
| `hostPssKb` | {'int': 3291} |
| `kind` | {'str': 3291} |
| `memAvailableKb` | {'int': 3291} |
| `memTotalKb` | {'int': 3291} |
| `otherPssKb` | {'int': 3291} |
| `processes` | {'int': 3291} |
| `pssFallbackProcesses` | {'int': 3291} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
