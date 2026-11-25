# sandbox_telemetry_parse — 2026-11-25 13:38:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2778692 lines=6156
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6141 |
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
| `chromeBrowserPssKb` | {'int': 6141} |
| `chromeGpuPssKb` | {'int': 6141} |
| `chromeOtherPssKb` | {'int': 6141} |
| `chromeProcesses` | {'int': 6141} |
| `chromeProfiles` | {'int': 6141} |
| `chromeRendererMaxPssKb` | {'int': 6141} |
| `chromeRendererPssKb` | {'int': 6141} |
| `chromeRenderers` | {'int': 6141} |
| `chromeTabs` | {'int': 6141} |
| `chromeTabsProbedProfiles` | {'int': 6141} |
| `chromeUtilityPssKb` | {'int': 6141} |
| `desktopPssKb` | {'int': 6141} |
| `hostPssKb` | {'int': 6141} |
| `kind` | {'str': 6141} |
| `memAvailableKb` | {'int': 6141} |
| `memTotalKb` | {'int': 6141} |
| `otherPssKb` | {'int': 6141} |
| `processes` | {'int': 6141} |
| `pssFallbackProcesses` | {'int': 6141} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
