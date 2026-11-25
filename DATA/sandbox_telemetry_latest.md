# sandbox_telemetry_parse — 2026-11-25 08:27:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2671956 lines=5920
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5905 |
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
| `chromeBrowserPssKb` | {'int': 5905} |
| `chromeGpuPssKb` | {'int': 5905} |
| `chromeOtherPssKb` | {'int': 5905} |
| `chromeProcesses` | {'int': 5905} |
| `chromeProfiles` | {'int': 5905} |
| `chromeRendererMaxPssKb` | {'int': 5905} |
| `chromeRendererPssKb` | {'int': 5905} |
| `chromeRenderers` | {'int': 5905} |
| `chromeTabs` | {'int': 5905} |
| `chromeTabsProbedProfiles` | {'int': 5905} |
| `chromeUtilityPssKb` | {'int': 5905} |
| `desktopPssKb` | {'int': 5905} |
| `hostPssKb` | {'int': 5905} |
| `kind` | {'str': 5905} |
| `memAvailableKb` | {'int': 5905} |
| `memTotalKb` | {'int': 5905} |
| `otherPssKb` | {'int': 5905} |
| `processes` | {'int': 5905} |
| `pssFallbackProcesses` | {'int': 5905} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
