# sandbox_telemetry_parse — 2026-11-23 15:43:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1896134 lines=4205
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4190 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4190} |
| `chromeGpuPssKb` | {'int': 4190} |
| `chromeOtherPssKb` | {'int': 4190} |
| `chromeProcesses` | {'int': 4190} |
| `chromeProfiles` | {'int': 4190} |
| `chromeRendererMaxPssKb` | {'int': 4190} |
| `chromeRendererPssKb` | {'int': 4190} |
| `chromeRenderers` | {'int': 4190} |
| `chromeTabs` | {'int': 4190} |
| `chromeTabsProbedProfiles` | {'int': 4190} |
| `chromeUtilityPssKb` | {'int': 4190} |
| `desktopPssKb` | {'int': 4190} |
| `hostPssKb` | {'int': 4190} |
| `kind` | {'str': 4190} |
| `memAvailableKb` | {'int': 4190} |
| `memTotalKb` | {'int': 4190} |
| `otherPssKb` | {'int': 4190} |
| `processes` | {'int': 4190} |
| `pssFallbackProcesses` | {'int': 4190} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
