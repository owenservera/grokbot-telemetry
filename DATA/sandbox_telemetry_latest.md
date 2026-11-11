# sandbox_telemetry_parse — 2026-11-11 08:30:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1543951 lines=3420
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3411 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3411} |
| `chromeGpuPssKb` | {'int': 3411} |
| `chromeOtherPssKb` | {'int': 3411} |
| `chromeProcesses` | {'int': 3411} |
| `chromeProfiles` | {'int': 3411} |
| `chromeRendererMaxPssKb` | {'int': 3411} |
| `chromeRendererPssKb` | {'int': 3411} |
| `chromeRenderers` | {'int': 3411} |
| `chromeTabs` | {'int': 3411} |
| `chromeTabsProbedProfiles` | {'int': 3411} |
| `chromeUtilityPssKb` | {'int': 3411} |
| `desktopPssKb` | {'int': 3411} |
| `hostPssKb` | {'int': 3411} |
| `kind` | {'str': 3411} |
| `memAvailableKb` | {'int': 3411} |
| `memTotalKb` | {'int': 3411} |
| `otherPssKb` | {'int': 3411} |
| `processes` | {'int': 3411} |
| `pssFallbackProcesses` | {'int': 3411} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
