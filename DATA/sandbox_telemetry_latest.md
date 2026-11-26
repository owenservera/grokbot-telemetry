# sandbox_telemetry_parse — 2026-11-26 19:15:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=48128 lines=113
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 105 |
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
| `chromeBrowserPssKb` | {'int': 105} |
| `chromeGpuPssKb` | {'int': 105} |
| `chromeOtherPssKb` | {'int': 105} |
| `chromeProcesses` | {'int': 105} |
| `chromeProfiles` | {'int': 105} |
| `chromeRendererMaxPssKb` | {'int': 105} |
| `chromeRendererPssKb` | {'int': 105} |
| `chromeRenderers` | {'int': 105} |
| `chromeTabs` | {'int': 105} |
| `chromeTabsProbedProfiles` | {'int': 105} |
| `chromeUtilityPssKb` | {'int': 105} |
| `desktopPssKb` | {'int': 105} |
| `hostPssKb` | {'int': 105} |
| `kind` | {'str': 105} |
| `memAvailableKb` | {'int': 105} |
| `memTotalKb` | {'int': 105} |
| `otherPssKb` | {'int': 105} |
| `processes` | {'int': 105} |
| `pssFallbackProcesses` | {'int': 105} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
