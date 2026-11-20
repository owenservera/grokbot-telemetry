# sandbox_telemetry_parse — 2026-11-20 02:53:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1545746 lines=3427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3416 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3416} |
| `chromeGpuPssKb` | {'int': 3416} |
| `chromeOtherPssKb` | {'int': 3416} |
| `chromeProcesses` | {'int': 3416} |
| `chromeProfiles` | {'int': 3416} |
| `chromeRendererMaxPssKb` | {'int': 3416} |
| `chromeRendererPssKb` | {'int': 3416} |
| `chromeRenderers` | {'int': 3416} |
| `chromeTabs` | {'int': 3416} |
| `chromeTabsProbedProfiles` | {'int': 3416} |
| `chromeUtilityPssKb` | {'int': 3416} |
| `desktopPssKb` | {'int': 3416} |
| `hostPssKb` | {'int': 3416} |
| `kind` | {'str': 3416} |
| `memAvailableKb` | {'int': 3416} |
| `memTotalKb` | {'int': 3416} |
| `otherPssKb` | {'int': 3416} |
| `processes` | {'int': 3416} |
| `pssFallbackProcesses` | {'int': 3416} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
