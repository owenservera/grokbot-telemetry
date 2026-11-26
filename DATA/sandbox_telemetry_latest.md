# sandbox_telemetry_parse — 2026-11-26 12:07:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3240514 lines=7177
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7162 |
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
| `chromeBrowserPssKb` | {'int': 7162} |
| `chromeGpuPssKb` | {'int': 7162} |
| `chromeOtherPssKb` | {'int': 7162} |
| `chromeProcesses` | {'int': 7162} |
| `chromeProfiles` | {'int': 7162} |
| `chromeRendererMaxPssKb` | {'int': 7162} |
| `chromeRendererPssKb` | {'int': 7162} |
| `chromeRenderers` | {'int': 7162} |
| `chromeTabs` | {'int': 7162} |
| `chromeTabsProbedProfiles` | {'int': 7162} |
| `chromeUtilityPssKb` | {'int': 7162} |
| `desktopPssKb` | {'int': 7162} |
| `hostPssKb` | {'int': 7162} |
| `kind` | {'str': 7162} |
| `memAvailableKb` | {'int': 7162} |
| `memTotalKb` | {'int': 7162} |
| `otherPssKb` | {'int': 7162} |
| `processes` | {'int': 7162} |
| `pssFallbackProcesses` | {'int': 7162} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
