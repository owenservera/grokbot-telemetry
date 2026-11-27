# sandbox_telemetry_parse — 2026-11-27 20:42:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=583803 lines=1297
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1289 |
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
| `chromeBrowserPssKb` | {'int': 1289} |
| `chromeGpuPssKb` | {'int': 1289} |
| `chromeOtherPssKb` | {'int': 1289} |
| `chromeProcesses` | {'int': 1289} |
| `chromeProfiles` | {'int': 1289} |
| `chromeRendererMaxPssKb` | {'int': 1289} |
| `chromeRendererPssKb` | {'int': 1289} |
| `chromeRenderers` | {'int': 1289} |
| `chromeTabs` | {'int': 1289} |
| `chromeTabsProbedProfiles` | {'int': 1289} |
| `chromeUtilityPssKb` | {'int': 1289} |
| `desktopPssKb` | {'int': 1289} |
| `hostPssKb` | {'int': 1289} |
| `kind` | {'str': 1289} |
| `memAvailableKb` | {'int': 1289} |
| `memTotalKb` | {'int': 1289} |
| `otherPssKb` | {'int': 1289} |
| `processes` | {'int': 1289} |
| `pssFallbackProcesses` | {'int': 1289} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
