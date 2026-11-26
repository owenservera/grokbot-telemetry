# sandbox_telemetry_parse — 2026-11-26 15:57:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3320127 lines=7353
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7338 |
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
| `chromeBrowserPssKb` | {'int': 7338} |
| `chromeGpuPssKb` | {'int': 7338} |
| `chromeOtherPssKb` | {'int': 7338} |
| `chromeProcesses` | {'int': 7338} |
| `chromeProfiles` | {'int': 7338} |
| `chromeRendererMaxPssKb` | {'int': 7338} |
| `chromeRendererPssKb` | {'int': 7338} |
| `chromeRenderers` | {'int': 7338} |
| `chromeTabs` | {'int': 7338} |
| `chromeTabsProbedProfiles` | {'int': 7338} |
| `chromeUtilityPssKb` | {'int': 7338} |
| `desktopPssKb` | {'int': 7338} |
| `hostPssKb` | {'int': 7338} |
| `kind` | {'str': 7338} |
| `memAvailableKb` | {'int': 7338} |
| `memTotalKb` | {'int': 7338} |
| `otherPssKb` | {'int': 7338} |
| `processes` | {'int': 7338} |
| `pssFallbackProcesses` | {'int': 7338} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
