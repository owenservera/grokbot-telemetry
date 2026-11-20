# sandbox_telemetry_parse — 2026-11-20 04:55:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1579194 lines=3501
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3490 |
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
| `chromeBrowserPssKb` | {'int': 3490} |
| `chromeGpuPssKb` | {'int': 3490} |
| `chromeOtherPssKb` | {'int': 3490} |
| `chromeProcesses` | {'int': 3490} |
| `chromeProfiles` | {'int': 3490} |
| `chromeRendererMaxPssKb` | {'int': 3490} |
| `chromeRendererPssKb` | {'int': 3490} |
| `chromeRenderers` | {'int': 3490} |
| `chromeTabs` | {'int': 3490} |
| `chromeTabsProbedProfiles` | {'int': 3490} |
| `chromeUtilityPssKb` | {'int': 3490} |
| `desktopPssKb` | {'int': 3490} |
| `hostPssKb` | {'int': 3490} |
| `kind` | {'str': 3490} |
| `memAvailableKb` | {'int': 3490} |
| `memTotalKb` | {'int': 3490} |
| `otherPssKb` | {'int': 3490} |
| `processes` | {'int': 3490} |
| `pssFallbackProcesses` | {'int': 3490} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
