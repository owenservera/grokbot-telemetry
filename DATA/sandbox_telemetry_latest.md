# sandbox_telemetry_parse — 2026-11-25 20:03:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2903037 lines=6431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6416 |
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
| `chromeBrowserPssKb` | {'int': 6416} |
| `chromeGpuPssKb` | {'int': 6416} |
| `chromeOtherPssKb` | {'int': 6416} |
| `chromeProcesses` | {'int': 6416} |
| `chromeProfiles` | {'int': 6416} |
| `chromeRendererMaxPssKb` | {'int': 6416} |
| `chromeRendererPssKb` | {'int': 6416} |
| `chromeRenderers` | {'int': 6416} |
| `chromeTabs` | {'int': 6416} |
| `chromeTabsProbedProfiles` | {'int': 6416} |
| `chromeUtilityPssKb` | {'int': 6416} |
| `desktopPssKb` | {'int': 6416} |
| `hostPssKb` | {'int': 6416} |
| `kind` | {'str': 6416} |
| `memAvailableKb` | {'int': 6416} |
| `memTotalKb` | {'int': 6416} |
| `otherPssKb` | {'int': 6416} |
| `processes` | {'int': 6416} |
| `pssFallbackProcesses` | {'int': 6416} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
