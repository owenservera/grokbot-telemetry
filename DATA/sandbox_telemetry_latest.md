# sandbox_telemetry_parse — 2026-11-18 15:50:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=877309 lines=1946
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1939 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1939} |
| `chromeGpuPssKb` | {'int': 1939} |
| `chromeOtherPssKb` | {'int': 1939} |
| `chromeProcesses` | {'int': 1939} |
| `chromeProfiles` | {'int': 1939} |
| `chromeRendererMaxPssKb` | {'int': 1939} |
| `chromeRendererPssKb` | {'int': 1939} |
| `chromeRenderers` | {'int': 1939} |
| `chromeTabs` | {'int': 1939} |
| `chromeTabsProbedProfiles` | {'int': 1939} |
| `chromeUtilityPssKb` | {'int': 1939} |
| `desktopPssKb` | {'int': 1939} |
| `hostPssKb` | {'int': 1939} |
| `kind` | {'str': 1939} |
| `memAvailableKb` | {'int': 1939} |
| `memTotalKb` | {'int': 1939} |
| `otherPssKb` | {'int': 1939} |
| `processes` | {'int': 1939} |
| `pssFallbackProcesses` | {'int': 1939} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
