# sandbox_telemetry_parse — 2026-11-23 21:32:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1996164 lines=4426
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4411 |
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
| `chromeBrowserPssKb` | {'int': 4411} |
| `chromeGpuPssKb` | {'int': 4411} |
| `chromeOtherPssKb` | {'int': 4411} |
| `chromeProcesses` | {'int': 4411} |
| `chromeProfiles` | {'int': 4411} |
| `chromeRendererMaxPssKb` | {'int': 4411} |
| `chromeRendererPssKb` | {'int': 4411} |
| `chromeRenderers` | {'int': 4411} |
| `chromeTabs` | {'int': 4411} |
| `chromeTabsProbedProfiles` | {'int': 4411} |
| `chromeUtilityPssKb` | {'int': 4411} |
| `desktopPssKb` | {'int': 4411} |
| `hostPssKb` | {'int': 4411} |
| `kind` | {'str': 4411} |
| `memAvailableKb` | {'int': 4411} |
| `memTotalKb` | {'int': 4411} |
| `otherPssKb` | {'int': 4411} |
| `processes` | {'int': 4411} |
| `pssFallbackProcesses` | {'int': 4411} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
