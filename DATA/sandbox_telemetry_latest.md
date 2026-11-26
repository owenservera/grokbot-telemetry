# sandbox_telemetry_parse — 2026-11-26 20:38:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=75707 lines=174
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 166 |
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
| `chromeBrowserPssKb` | {'int': 166} |
| `chromeGpuPssKb` | {'int': 166} |
| `chromeOtherPssKb` | {'int': 166} |
| `chromeProcesses` | {'int': 166} |
| `chromeProfiles` | {'int': 166} |
| `chromeRendererMaxPssKb` | {'int': 166} |
| `chromeRendererPssKb` | {'int': 166} |
| `chromeRenderers` | {'int': 166} |
| `chromeTabs` | {'int': 166} |
| `chromeTabsProbedProfiles` | {'int': 166} |
| `chromeUtilityPssKb` | {'int': 166} |
| `desktopPssKb` | {'int': 166} |
| `hostPssKb` | {'int': 166} |
| `kind` | {'str': 166} |
| `memAvailableKb` | {'int': 166} |
| `memTotalKb` | {'int': 166} |
| `otherPssKb` | {'int': 166} |
| `processes` | {'int': 166} |
| `pssFallbackProcesses` | {'int': 166} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
