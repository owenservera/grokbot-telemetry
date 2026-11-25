# sandbox_telemetry_parse — 2026-11-25 17:59:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2861440 lines=6339
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6324 |
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
| `chromeBrowserPssKb` | {'int': 6324} |
| `chromeGpuPssKb` | {'int': 6324} |
| `chromeOtherPssKb` | {'int': 6324} |
| `chromeProcesses` | {'int': 6324} |
| `chromeProfiles` | {'int': 6324} |
| `chromeRendererMaxPssKb` | {'int': 6324} |
| `chromeRendererPssKb` | {'int': 6324} |
| `chromeRenderers` | {'int': 6324} |
| `chromeTabs` | {'int': 6324} |
| `chromeTabsProbedProfiles` | {'int': 6324} |
| `chromeUtilityPssKb` | {'int': 6324} |
| `desktopPssKb` | {'int': 6324} |
| `hostPssKb` | {'int': 6324} |
| `kind` | {'str': 6324} |
| `memAvailableKb` | {'int': 6324} |
| `memTotalKb` | {'int': 6324} |
| `otherPssKb` | {'int': 6324} |
| `processes` | {'int': 6324} |
| `pssFallbackProcesses` | {'int': 6324} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
