# sandbox_telemetry_parse — 2026-11-25 05:56:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2617679 lines=5800
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5785 |
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
| `chromeBrowserPssKb` | {'int': 5785} |
| `chromeGpuPssKb` | {'int': 5785} |
| `chromeOtherPssKb` | {'int': 5785} |
| `chromeProcesses` | {'int': 5785} |
| `chromeProfiles` | {'int': 5785} |
| `chromeRendererMaxPssKb` | {'int': 5785} |
| `chromeRendererPssKb` | {'int': 5785} |
| `chromeRenderers` | {'int': 5785} |
| `chromeTabs` | {'int': 5785} |
| `chromeTabsProbedProfiles` | {'int': 5785} |
| `chromeUtilityPssKb` | {'int': 5785} |
| `desktopPssKb` | {'int': 5785} |
| `hostPssKb` | {'int': 5785} |
| `kind` | {'str': 5785} |
| `memAvailableKb` | {'int': 5785} |
| `memTotalKb` | {'int': 5785} |
| `otherPssKb` | {'int': 5785} |
| `processes` | {'int': 5785} |
| `pssFallbackProcesses` | {'int': 5785} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
