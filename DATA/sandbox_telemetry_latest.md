# sandbox_telemetry_parse — 2026-11-27 11:25:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=389612 lines=868
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 860 |
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
| `chromeBrowserPssKb` | {'int': 860} |
| `chromeGpuPssKb` | {'int': 860} |
| `chromeOtherPssKb` | {'int': 860} |
| `chromeProcesses` | {'int': 860} |
| `chromeProfiles` | {'int': 860} |
| `chromeRendererMaxPssKb` | {'int': 860} |
| `chromeRendererPssKb` | {'int': 860} |
| `chromeRenderers` | {'int': 860} |
| `chromeTabs` | {'int': 860} |
| `chromeTabsProbedProfiles` | {'int': 860} |
| `chromeUtilityPssKb` | {'int': 860} |
| `desktopPssKb` | {'int': 860} |
| `hostPssKb` | {'int': 860} |
| `kind` | {'str': 860} |
| `memAvailableKb` | {'int': 860} |
| `memTotalKb` | {'int': 860} |
| `otherPssKb` | {'int': 860} |
| `processes` | {'int': 860} |
| `pssFallbackProcesses` | {'int': 860} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
