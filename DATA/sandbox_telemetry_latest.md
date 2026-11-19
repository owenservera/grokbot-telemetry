# sandbox_telemetry_parse — 2026-11-19 22:25:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1467083 lines=3253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3242 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3242} |
| `chromeGpuPssKb` | {'int': 3242} |
| `chromeOtherPssKb` | {'int': 3242} |
| `chromeProcesses` | {'int': 3242} |
| `chromeProfiles` | {'int': 3242} |
| `chromeRendererMaxPssKb` | {'int': 3242} |
| `chromeRendererPssKb` | {'int': 3242} |
| `chromeRenderers` | {'int': 3242} |
| `chromeTabs` | {'int': 3242} |
| `chromeTabsProbedProfiles` | {'int': 3242} |
| `chromeUtilityPssKb` | {'int': 3242} |
| `desktopPssKb` | {'int': 3242} |
| `hostPssKb` | {'int': 3242} |
| `kind` | {'str': 3242} |
| `memAvailableKb` | {'int': 3242} |
| `memTotalKb` | {'int': 3242} |
| `otherPssKb` | {'int': 3242} |
| `processes` | {'int': 3242} |
| `pssFallbackProcesses` | {'int': 3242} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
