# sandbox_telemetry_parse — 2026-11-11 06:02:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1499192 lines=3321
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3312 |
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
| `chromeBrowserPssKb` | {'int': 3312} |
| `chromeGpuPssKb` | {'int': 3312} |
| `chromeOtherPssKb` | {'int': 3312} |
| `chromeProcesses` | {'int': 3312} |
| `chromeProfiles` | {'int': 3312} |
| `chromeRendererMaxPssKb` | {'int': 3312} |
| `chromeRendererPssKb` | {'int': 3312} |
| `chromeRenderers` | {'int': 3312} |
| `chromeTabs` | {'int': 3312} |
| `chromeTabsProbedProfiles` | {'int': 3312} |
| `chromeUtilityPssKb` | {'int': 3312} |
| `desktopPssKb` | {'int': 3312} |
| `hostPssKb` | {'int': 3312} |
| `kind` | {'str': 3312} |
| `memAvailableKb` | {'int': 3312} |
| `memTotalKb` | {'int': 3312} |
| `otherPssKb` | {'int': 3312} |
| `processes` | {'int': 3312} |
| `pssFallbackProcesses` | {'int': 3312} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
