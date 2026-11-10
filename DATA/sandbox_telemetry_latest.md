# sandbox_telemetry_parse — 2026-11-10 23:14:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1368488 lines=3032
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3023 |
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
| `chromeBrowserPssKb` | {'int': 3023} |
| `chromeGpuPssKb` | {'int': 3023} |
| `chromeOtherPssKb` | {'int': 3023} |
| `chromeProcesses` | {'int': 3023} |
| `chromeProfiles` | {'int': 3023} |
| `chromeRendererMaxPssKb` | {'int': 3023} |
| `chromeRendererPssKb` | {'int': 3023} |
| `chromeRenderers` | {'int': 3023} |
| `chromeTabs` | {'int': 3023} |
| `chromeTabsProbedProfiles` | {'int': 3023} |
| `chromeUtilityPssKb` | {'int': 3023} |
| `desktopPssKb` | {'int': 3023} |
| `hostPssKb` | {'int': 3023} |
| `kind` | {'str': 3023} |
| `memAvailableKb` | {'int': 3023} |
| `memTotalKb` | {'int': 3023} |
| `otherPssKb` | {'int': 3023} |
| `processes` | {'int': 3023} |
| `pssFallbackProcesses` | {'int': 3023} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
