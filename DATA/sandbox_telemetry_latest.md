# sandbox_telemetry_parse — 2026-11-11 01:56:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1424140 lines=3155
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3146 |
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
| `chromeBrowserPssKb` | {'int': 3146} |
| `chromeGpuPssKb` | {'int': 3146} |
| `chromeOtherPssKb` | {'int': 3146} |
| `chromeProcesses` | {'int': 3146} |
| `chromeProfiles` | {'int': 3146} |
| `chromeRendererMaxPssKb` | {'int': 3146} |
| `chromeRendererPssKb` | {'int': 3146} |
| `chromeRenderers` | {'int': 3146} |
| `chromeTabs` | {'int': 3146} |
| `chromeTabsProbedProfiles` | {'int': 3146} |
| `chromeUtilityPssKb` | {'int': 3146} |
| `desktopPssKb` | {'int': 3146} |
| `hostPssKb` | {'int': 3146} |
| `kind` | {'str': 3146} |
| `memAvailableKb` | {'int': 3146} |
| `memTotalKb` | {'int': 3146} |
| `otherPssKb` | {'int': 3146} |
| `processes` | {'int': 3146} |
| `pssFallbackProcesses` | {'int': 3146} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
