# sandbox_telemetry_parse — 2026-11-25 03:44:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2577889 lines=5712
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5697 |
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
| `chromeBrowserPssKb` | {'int': 5697} |
| `chromeGpuPssKb` | {'int': 5697} |
| `chromeOtherPssKb` | {'int': 5697} |
| `chromeProcesses` | {'int': 5697} |
| `chromeProfiles` | {'int': 5697} |
| `chromeRendererMaxPssKb` | {'int': 5697} |
| `chromeRendererPssKb` | {'int': 5697} |
| `chromeRenderers` | {'int': 5697} |
| `chromeTabs` | {'int': 5697} |
| `chromeTabsProbedProfiles` | {'int': 5697} |
| `chromeUtilityPssKb` | {'int': 5697} |
| `desktopPssKb` | {'int': 5697} |
| `hostPssKb` | {'int': 5697} |
| `kind` | {'str': 5697} |
| `memAvailableKb` | {'int': 5697} |
| `memTotalKb` | {'int': 5697} |
| `otherPssKb` | {'int': 5697} |
| `processes` | {'int': 5697} |
| `pssFallbackProcesses` | {'int': 5697} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
