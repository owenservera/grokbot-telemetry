# sandbox_telemetry_parse — 2026-11-23 18:36:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1945456 lines=4314
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4299 |
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
| `chromeBrowserPssKb` | {'int': 4299} |
| `chromeGpuPssKb` | {'int': 4299} |
| `chromeOtherPssKb` | {'int': 4299} |
| `chromeProcesses` | {'int': 4299} |
| `chromeProfiles` | {'int': 4299} |
| `chromeRendererMaxPssKb` | {'int': 4299} |
| `chromeRendererPssKb` | {'int': 4299} |
| `chromeRenderers` | {'int': 4299} |
| `chromeTabs` | {'int': 4299} |
| `chromeTabsProbedProfiles` | {'int': 4299} |
| `chromeUtilityPssKb` | {'int': 4299} |
| `desktopPssKb` | {'int': 4299} |
| `hostPssKb` | {'int': 4299} |
| `kind` | {'str': 4299} |
| `memAvailableKb` | {'int': 4299} |
| `memTotalKb` | {'int': 4299} |
| `otherPssKb` | {'int': 4299} |
| `processes` | {'int': 4299} |
| `pssFallbackProcesses` | {'int': 4299} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
