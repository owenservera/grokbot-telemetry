# sandbox_telemetry_parse — 2026-11-20 11:41:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1698100 lines=3764
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3753 |
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
| `chromeBrowserPssKb` | {'int': 3753} |
| `chromeGpuPssKb` | {'int': 3753} |
| `chromeOtherPssKb` | {'int': 3753} |
| `chromeProcesses` | {'int': 3753} |
| `chromeProfiles` | {'int': 3753} |
| `chromeRendererMaxPssKb` | {'int': 3753} |
| `chromeRendererPssKb` | {'int': 3753} |
| `chromeRenderers` | {'int': 3753} |
| `chromeTabs` | {'int': 3753} |
| `chromeTabsProbedProfiles` | {'int': 3753} |
| `chromeUtilityPssKb` | {'int': 3753} |
| `desktopPssKb` | {'int': 3753} |
| `hostPssKb` | {'int': 3753} |
| `kind` | {'str': 3753} |
| `memAvailableKb` | {'int': 3753} |
| `memTotalKb` | {'int': 3753} |
| `otherPssKb` | {'int': 3753} |
| `processes` | {'int': 3753} |
| `pssFallbackProcesses` | {'int': 3753} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
