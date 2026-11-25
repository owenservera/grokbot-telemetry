# sandbox_telemetry_parse — 2026-11-25 13:47:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2780953 lines=6161
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6146 |
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
| `chromeBrowserPssKb` | {'int': 6146} |
| `chromeGpuPssKb` | {'int': 6146} |
| `chromeOtherPssKb` | {'int': 6146} |
| `chromeProcesses` | {'int': 6146} |
| `chromeProfiles` | {'int': 6146} |
| `chromeRendererMaxPssKb` | {'int': 6146} |
| `chromeRendererPssKb` | {'int': 6146} |
| `chromeRenderers` | {'int': 6146} |
| `chromeTabs` | {'int': 6146} |
| `chromeTabsProbedProfiles` | {'int': 6146} |
| `chromeUtilityPssKb` | {'int': 6146} |
| `desktopPssKb` | {'int': 6146} |
| `hostPssKb` | {'int': 6146} |
| `kind` | {'str': 6146} |
| `memAvailableKb` | {'int': 6146} |
| `memTotalKb` | {'int': 6146} |
| `otherPssKb` | {'int': 6146} |
| `processes` | {'int': 6146} |
| `pssFallbackProcesses` | {'int': 6146} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
