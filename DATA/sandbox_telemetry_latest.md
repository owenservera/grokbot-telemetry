# sandbox_telemetry_parse — 2026-11-23 19:19:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1956781 lines=4339
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4324 |
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
| `chromeBrowserPssKb` | {'int': 4324} |
| `chromeGpuPssKb` | {'int': 4324} |
| `chromeOtherPssKb` | {'int': 4324} |
| `chromeProcesses` | {'int': 4324} |
| `chromeProfiles` | {'int': 4324} |
| `chromeRendererMaxPssKb` | {'int': 4324} |
| `chromeRendererPssKb` | {'int': 4324} |
| `chromeRenderers` | {'int': 4324} |
| `chromeTabs` | {'int': 4324} |
| `chromeTabsProbedProfiles` | {'int': 4324} |
| `chromeUtilityPssKb` | {'int': 4324} |
| `desktopPssKb` | {'int': 4324} |
| `hostPssKb` | {'int': 4324} |
| `kind` | {'str': 4324} |
| `memAvailableKb` | {'int': 4324} |
| `memTotalKb` | {'int': 4324} |
| `otherPssKb` | {'int': 4324} |
| `processes` | {'int': 4324} |
| `pssFallbackProcesses` | {'int': 4324} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
