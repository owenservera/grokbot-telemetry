# sandbox_telemetry_parse — 2026-11-23 18:28:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1942285 lines=4307
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4292 |
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
| `chromeBrowserPssKb` | {'int': 4292} |
| `chromeGpuPssKb` | {'int': 4292} |
| `chromeOtherPssKb` | {'int': 4292} |
| `chromeProcesses` | {'int': 4292} |
| `chromeProfiles` | {'int': 4292} |
| `chromeRendererMaxPssKb` | {'int': 4292} |
| `chromeRendererPssKb` | {'int': 4292} |
| `chromeRenderers` | {'int': 4292} |
| `chromeTabs` | {'int': 4292} |
| `chromeTabsProbedProfiles` | {'int': 4292} |
| `chromeUtilityPssKb` | {'int': 4292} |
| `desktopPssKb` | {'int': 4292} |
| `hostPssKb` | {'int': 4292} |
| `kind` | {'str': 4292} |
| `memAvailableKb` | {'int': 4292} |
| `memTotalKb` | {'int': 4292} |
| `otherPssKb` | {'int': 4292} |
| `processes` | {'int': 4292} |
| `pssFallbackProcesses` | {'int': 4292} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
