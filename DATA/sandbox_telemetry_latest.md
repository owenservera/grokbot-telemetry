# sandbox_telemetry_parse — 2026-11-10 23:51:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1384779 lines=3068
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3059 |
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
| `chromeBrowserPssKb` | {'int': 3059} |
| `chromeGpuPssKb` | {'int': 3059} |
| `chromeOtherPssKb` | {'int': 3059} |
| `chromeProcesses` | {'int': 3059} |
| `chromeProfiles` | {'int': 3059} |
| `chromeRendererMaxPssKb` | {'int': 3059} |
| `chromeRendererPssKb` | {'int': 3059} |
| `chromeRenderers` | {'int': 3059} |
| `chromeTabs` | {'int': 3059} |
| `chromeTabsProbedProfiles` | {'int': 3059} |
| `chromeUtilityPssKb` | {'int': 3059} |
| `desktopPssKb` | {'int': 3059} |
| `hostPssKb` | {'int': 3059} |
| `kind` | {'str': 3059} |
| `memAvailableKb` | {'int': 3059} |
| `memTotalKb` | {'int': 3059} |
| `otherPssKb` | {'int': 3059} |
| `processes` | {'int': 3059} |
| `pssFallbackProcesses` | {'int': 3059} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
