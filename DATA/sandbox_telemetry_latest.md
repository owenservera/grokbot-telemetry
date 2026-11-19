# sandbox_telemetry_parse — 2026-11-19 17:22:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1370249 lines=3039
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3028 |
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
| `chromeBrowserPssKb` | {'int': 3028} |
| `chromeGpuPssKb` | {'int': 3028} |
| `chromeOtherPssKb` | {'int': 3028} |
| `chromeProcesses` | {'int': 3028} |
| `chromeProfiles` | {'int': 3028} |
| `chromeRendererMaxPssKb` | {'int': 3028} |
| `chromeRendererPssKb` | {'int': 3028} |
| `chromeRenderers` | {'int': 3028} |
| `chromeTabs` | {'int': 3028} |
| `chromeTabsProbedProfiles` | {'int': 3028} |
| `chromeUtilityPssKb` | {'int': 3028} |
| `desktopPssKb` | {'int': 3028} |
| `hostPssKb` | {'int': 3028} |
| `kind` | {'str': 3028} |
| `memAvailableKb` | {'int': 3028} |
| `memTotalKb` | {'int': 3028} |
| `otherPssKb` | {'int': 3028} |
| `processes` | {'int': 3028} |
| `pssFallbackProcesses` | {'int': 3028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
