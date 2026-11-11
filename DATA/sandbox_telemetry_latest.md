# sandbox_telemetry_parse — 2026-11-11 01:17:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1412386 lines=3129
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3120 |
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
| `chromeBrowserPssKb` | {'int': 3120} |
| `chromeGpuPssKb` | {'int': 3120} |
| `chromeOtherPssKb` | {'int': 3120} |
| `chromeProcesses` | {'int': 3120} |
| `chromeProfiles` | {'int': 3120} |
| `chromeRendererMaxPssKb` | {'int': 3120} |
| `chromeRendererPssKb` | {'int': 3120} |
| `chromeRenderers` | {'int': 3120} |
| `chromeTabs` | {'int': 3120} |
| `chromeTabsProbedProfiles` | {'int': 3120} |
| `chromeUtilityPssKb` | {'int': 3120} |
| `desktopPssKb` | {'int': 3120} |
| `hostPssKb` | {'int': 3120} |
| `kind` | {'str': 3120} |
| `memAvailableKb` | {'int': 3120} |
| `memTotalKb` | {'int': 3120} |
| `otherPssKb` | {'int': 3120} |
| `processes` | {'int': 3120} |
| `pssFallbackProcesses` | {'int': 3120} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
