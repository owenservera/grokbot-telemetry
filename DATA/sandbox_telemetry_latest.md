# sandbox_telemetry_parse — 2026-11-10 22:50:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1362610 lines=3019
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3010 |
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
| `chromeBrowserPssKb` | {'int': 3010} |
| `chromeGpuPssKb` | {'int': 3010} |
| `chromeOtherPssKb` | {'int': 3010} |
| `chromeProcesses` | {'int': 3010} |
| `chromeProfiles` | {'int': 3010} |
| `chromeRendererMaxPssKb` | {'int': 3010} |
| `chromeRendererPssKb` | {'int': 3010} |
| `chromeRenderers` | {'int': 3010} |
| `chromeTabs` | {'int': 3010} |
| `chromeTabsProbedProfiles` | {'int': 3010} |
| `chromeUtilityPssKb` | {'int': 3010} |
| `desktopPssKb` | {'int': 3010} |
| `hostPssKb` | {'int': 3010} |
| `kind` | {'str': 3010} |
| `memAvailableKb` | {'int': 3010} |
| `memTotalKb` | {'int': 3010} |
| `otherPssKb` | {'int': 3010} |
| `processes` | {'int': 3010} |
| `pssFallbackProcesses` | {'int': 3010} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
