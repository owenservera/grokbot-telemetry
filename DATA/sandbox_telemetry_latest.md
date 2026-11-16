# sandbox_telemetry_parse — 2026-11-16 21:49:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=129895 lines=293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 286 |
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
| `chromeBrowserPssKb` | {'int': 286} |
| `chromeGpuPssKb` | {'int': 286} |
| `chromeOtherPssKb` | {'int': 286} |
| `chromeProcesses` | {'int': 286} |
| `chromeProfiles` | {'int': 286} |
| `chromeRendererMaxPssKb` | {'int': 286} |
| `chromeRendererPssKb` | {'int': 286} |
| `chromeRenderers` | {'int': 286} |
| `chromeTabs` | {'int': 286} |
| `chromeTabsProbedProfiles` | {'int': 286} |
| `chromeUtilityPssKb` | {'int': 286} |
| `desktopPssKb` | {'int': 286} |
| `hostPssKb` | {'int': 286} |
| `kind` | {'str': 286} |
| `memAvailableKb` | {'int': 286} |
| `memTotalKb` | {'int': 286} |
| `otherPssKb` | {'int': 286} |
| `processes` | {'int': 286} |
| `pssFallbackProcesses` | {'int': 286} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
