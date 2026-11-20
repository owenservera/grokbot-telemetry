# sandbox_telemetry_parse — 2026-11-20 10:09:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1669161 lines=3700
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3689 |
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
| `chromeBrowserPssKb` | {'int': 3689} |
| `chromeGpuPssKb` | {'int': 3689} |
| `chromeOtherPssKb` | {'int': 3689} |
| `chromeProcesses` | {'int': 3689} |
| `chromeProfiles` | {'int': 3689} |
| `chromeRendererMaxPssKb` | {'int': 3689} |
| `chromeRendererPssKb` | {'int': 3689} |
| `chromeRenderers` | {'int': 3689} |
| `chromeTabs` | {'int': 3689} |
| `chromeTabsProbedProfiles` | {'int': 3689} |
| `chromeUtilityPssKb` | {'int': 3689} |
| `desktopPssKb` | {'int': 3689} |
| `hostPssKb` | {'int': 3689} |
| `kind` | {'str': 3689} |
| `memAvailableKb` | {'int': 3689} |
| `memTotalKb` | {'int': 3689} |
| `otherPssKb` | {'int': 3689} |
| `processes` | {'int': 3689} |
| `pssFallbackProcesses` | {'int': 3689} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
