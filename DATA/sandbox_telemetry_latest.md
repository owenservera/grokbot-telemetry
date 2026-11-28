# sandbox_telemetry_parse — 2026-11-28 21:09:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1061227 lines=2352
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2344 |
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
| `chromeBrowserPssKb` | {'int': 2344} |
| `chromeGpuPssKb` | {'int': 2344} |
| `chromeOtherPssKb` | {'int': 2344} |
| `chromeProcesses` | {'int': 2344} |
| `chromeProfiles` | {'int': 2344} |
| `chromeRendererMaxPssKb` | {'int': 2344} |
| `chromeRendererPssKb` | {'int': 2344} |
| `chromeRenderers` | {'int': 2344} |
| `chromeTabs` | {'int': 2344} |
| `chromeTabsProbedProfiles` | {'int': 2344} |
| `chromeUtilityPssKb` | {'int': 2344} |
| `desktopPssKb` | {'int': 2344} |
| `hostPssKb` | {'int': 2344} |
| `kind` | {'str': 2344} |
| `memAvailableKb` | {'int': 2344} |
| `memTotalKb` | {'int': 2344} |
| `otherPssKb` | {'int': 2344} |
| `processes` | {'int': 2344} |
| `pssFallbackProcesses` | {'int': 2344} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
