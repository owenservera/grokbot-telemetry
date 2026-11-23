# sandbox_telemetry_parse — 2026-11-23 22:14:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2011108 lines=4459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4444 |
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
| `chromeBrowserPssKb` | {'int': 4444} |
| `chromeGpuPssKb` | {'int': 4444} |
| `chromeOtherPssKb` | {'int': 4444} |
| `chromeProcesses` | {'int': 4444} |
| `chromeProfiles` | {'int': 4444} |
| `chromeRendererMaxPssKb` | {'int': 4444} |
| `chromeRendererPssKb` | {'int': 4444} |
| `chromeRenderers` | {'int': 4444} |
| `chromeTabs` | {'int': 4444} |
| `chromeTabsProbedProfiles` | {'int': 4444} |
| `chromeUtilityPssKb` | {'int': 4444} |
| `desktopPssKb` | {'int': 4444} |
| `hostPssKb` | {'int': 4444} |
| `kind` | {'str': 4444} |
| `memAvailableKb` | {'int': 4444} |
| `memTotalKb` | {'int': 4444} |
| `otherPssKb` | {'int': 4444} |
| `processes` | {'int': 4444} |
| `pssFallbackProcesses` | {'int': 4444} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
