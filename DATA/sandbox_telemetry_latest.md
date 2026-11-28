# sandbox_telemetry_parse — 2026-11-28 16:57:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=972462 lines=2156
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2148 |
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
| `chromeBrowserPssKb` | {'int': 2148} |
| `chromeGpuPssKb` | {'int': 2148} |
| `chromeOtherPssKb` | {'int': 2148} |
| `chromeProcesses` | {'int': 2148} |
| `chromeProfiles` | {'int': 2148} |
| `chromeRendererMaxPssKb` | {'int': 2148} |
| `chromeRendererPssKb` | {'int': 2148} |
| `chromeRenderers` | {'int': 2148} |
| `chromeTabs` | {'int': 2148} |
| `chromeTabsProbedProfiles` | {'int': 2148} |
| `chromeUtilityPssKb` | {'int': 2148} |
| `desktopPssKb` | {'int': 2148} |
| `hostPssKb` | {'int': 2148} |
| `kind` | {'str': 2148} |
| `memAvailableKb` | {'int': 2148} |
| `memTotalKb` | {'int': 2148} |
| `otherPssKb` | {'int': 2148} |
| `processes` | {'int': 2148} |
| `pssFallbackProcesses` | {'int': 2148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
