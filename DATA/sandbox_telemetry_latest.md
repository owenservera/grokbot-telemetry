# sandbox_telemetry_parse — 2026-11-19 19:18:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1406464 lines=3119
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3108 |
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
| `chromeBrowserPssKb` | {'int': 3108} |
| `chromeGpuPssKb` | {'int': 3108} |
| `chromeOtherPssKb` | {'int': 3108} |
| `chromeProcesses` | {'int': 3108} |
| `chromeProfiles` | {'int': 3108} |
| `chromeRendererMaxPssKb` | {'int': 3108} |
| `chromeRendererPssKb` | {'int': 3108} |
| `chromeRenderers` | {'int': 3108} |
| `chromeTabs` | {'int': 3108} |
| `chromeTabsProbedProfiles` | {'int': 3108} |
| `chromeUtilityPssKb` | {'int': 3108} |
| `desktopPssKb` | {'int': 3108} |
| `hostPssKb` | {'int': 3108} |
| `kind` | {'str': 3108} |
| `memAvailableKb` | {'int': 3108} |
| `memTotalKb` | {'int': 3108} |
| `otherPssKb` | {'int': 3108} |
| `processes` | {'int': 3108} |
| `pssFallbackProcesses` | {'int': 3108} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
