# sandbox_telemetry_parse — 2026-11-11 07:56:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1532651 lines=3395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3386 |
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
| `chromeBrowserPssKb` | {'int': 3386} |
| `chromeGpuPssKb` | {'int': 3386} |
| `chromeOtherPssKb` | {'int': 3386} |
| `chromeProcesses` | {'int': 3386} |
| `chromeProfiles` | {'int': 3386} |
| `chromeRendererMaxPssKb` | {'int': 3386} |
| `chromeRendererPssKb` | {'int': 3386} |
| `chromeRenderers` | {'int': 3386} |
| `chromeTabs` | {'int': 3386} |
| `chromeTabsProbedProfiles` | {'int': 3386} |
| `chromeUtilityPssKb` | {'int': 3386} |
| `desktopPssKb` | {'int': 3386} |
| `hostPssKb` | {'int': 3386} |
| `kind` | {'str': 3386} |
| `memAvailableKb` | {'int': 3386} |
| `memTotalKb` | {'int': 3386} |
| `otherPssKb` | {'int': 3386} |
| `processes` | {'int': 3386} |
| `pssFallbackProcesses` | {'int': 3386} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
