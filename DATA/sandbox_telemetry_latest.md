# sandbox_telemetry_parse — 2026-11-28 21:21:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1064843 lines=2360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2352 |
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
| `chromeBrowserPssKb` | {'int': 2352} |
| `chromeGpuPssKb` | {'int': 2352} |
| `chromeOtherPssKb` | {'int': 2352} |
| `chromeProcesses` | {'int': 2352} |
| `chromeProfiles` | {'int': 2352} |
| `chromeRendererMaxPssKb` | {'int': 2352} |
| `chromeRendererPssKb` | {'int': 2352} |
| `chromeRenderers` | {'int': 2352} |
| `chromeTabs` | {'int': 2352} |
| `chromeTabsProbedProfiles` | {'int': 2352} |
| `chromeUtilityPssKb` | {'int': 2352} |
| `desktopPssKb` | {'int': 2352} |
| `hostPssKb` | {'int': 2352} |
| `kind` | {'str': 2352} |
| `memAvailableKb` | {'int': 2352} |
| `memTotalKb` | {'int': 2352} |
| `otherPssKb` | {'int': 2352} |
| `processes` | {'int': 2352} |
| `pssFallbackProcesses` | {'int': 2352} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
