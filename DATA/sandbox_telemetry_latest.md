# sandbox_telemetry_parse — 2026-11-24 23:49:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2503296 lines=5547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5532 |
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
| `chromeBrowserPssKb` | {'int': 5532} |
| `chromeGpuPssKb` | {'int': 5532} |
| `chromeOtherPssKb` | {'int': 5532} |
| `chromeProcesses` | {'int': 5532} |
| `chromeProfiles` | {'int': 5532} |
| `chromeRendererMaxPssKb` | {'int': 5532} |
| `chromeRendererPssKb` | {'int': 5532} |
| `chromeRenderers` | {'int': 5532} |
| `chromeTabs` | {'int': 5532} |
| `chromeTabsProbedProfiles` | {'int': 5532} |
| `chromeUtilityPssKb` | {'int': 5532} |
| `desktopPssKb` | {'int': 5532} |
| `hostPssKb` | {'int': 5532} |
| `kind` | {'str': 5532} |
| `memAvailableKb` | {'int': 5532} |
| `memTotalKb` | {'int': 5532} |
| `otherPssKb` | {'int': 5532} |
| `processes` | {'int': 5532} |
| `pssFallbackProcesses` | {'int': 5532} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
