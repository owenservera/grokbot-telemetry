# sandbox_telemetry_parse — 2026-11-27 16:37:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=500484 lines=1113
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1105 |
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
| `chromeBrowserPssKb` | {'int': 1105} |
| `chromeGpuPssKb` | {'int': 1105} |
| `chromeOtherPssKb` | {'int': 1105} |
| `chromeProcesses` | {'int': 1105} |
| `chromeProfiles` | {'int': 1105} |
| `chromeRendererMaxPssKb` | {'int': 1105} |
| `chromeRendererPssKb` | {'int': 1105} |
| `chromeRenderers` | {'int': 1105} |
| `chromeTabs` | {'int': 1105} |
| `chromeTabsProbedProfiles` | {'int': 1105} |
| `chromeUtilityPssKb` | {'int': 1105} |
| `desktopPssKb` | {'int': 1105} |
| `hostPssKb` | {'int': 1105} |
| `kind` | {'str': 1105} |
| `memAvailableKb` | {'int': 1105} |
| `memTotalKb` | {'int': 1105} |
| `otherPssKb` | {'int': 1105} |
| `processes` | {'int': 1105} |
| `pssFallbackProcesses` | {'int': 1105} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
