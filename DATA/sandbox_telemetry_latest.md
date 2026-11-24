# sandbox_telemetry_parse — 2026-11-24 17:18:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2372954 lines=5259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5244 |
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
| `chromeBrowserPssKb` | {'int': 5244} |
| `chromeGpuPssKb` | {'int': 5244} |
| `chromeOtherPssKb` | {'int': 5244} |
| `chromeProcesses` | {'int': 5244} |
| `chromeProfiles` | {'int': 5244} |
| `chromeRendererMaxPssKb` | {'int': 5244} |
| `chromeRendererPssKb` | {'int': 5244} |
| `chromeRenderers` | {'int': 5244} |
| `chromeTabs` | {'int': 5244} |
| `chromeTabsProbedProfiles` | {'int': 5244} |
| `chromeUtilityPssKb` | {'int': 5244} |
| `desktopPssKb` | {'int': 5244} |
| `hostPssKb` | {'int': 5244} |
| `kind` | {'str': 5244} |
| `memAvailableKb` | {'int': 5244} |
| `memTotalKb` | {'int': 5244} |
| `otherPssKb` | {'int': 5244} |
| `processes` | {'int': 5244} |
| `pssFallbackProcesses` | {'int': 5244} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
