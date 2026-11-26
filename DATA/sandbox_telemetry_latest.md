# sandbox_telemetry_parse — 2026-11-26 12:39:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3253180 lines=7205
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7190 |
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
| `chromeBrowserPssKb` | {'int': 7190} |
| `chromeGpuPssKb` | {'int': 7190} |
| `chromeOtherPssKb` | {'int': 7190} |
| `chromeProcesses` | {'int': 7190} |
| `chromeProfiles` | {'int': 7190} |
| `chromeRendererMaxPssKb` | {'int': 7190} |
| `chromeRendererPssKb` | {'int': 7190} |
| `chromeRenderers` | {'int': 7190} |
| `chromeTabs` | {'int': 7190} |
| `chromeTabsProbedProfiles` | {'int': 7190} |
| `chromeUtilityPssKb` | {'int': 7190} |
| `desktopPssKb` | {'int': 7190} |
| `hostPssKb` | {'int': 7190} |
| `kind` | {'str': 7190} |
| `memAvailableKb` | {'int': 7190} |
| `memTotalKb` | {'int': 7190} |
| `otherPssKb` | {'int': 7190} |
| `processes` | {'int': 7190} |
| `pssFallbackProcesses` | {'int': 7190} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
