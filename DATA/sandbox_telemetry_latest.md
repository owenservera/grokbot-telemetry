# sandbox_telemetry_parse — 2026-11-12 21:00:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2327019 lines=5150
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5141 |
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
| `chromeBrowserPssKb` | {'int': 5141} |
| `chromeGpuPssKb` | {'int': 5141} |
| `chromeOtherPssKb` | {'int': 5141} |
| `chromeProcesses` | {'int': 5141} |
| `chromeProfiles` | {'int': 5141} |
| `chromeRendererMaxPssKb` | {'int': 5141} |
| `chromeRendererPssKb` | {'int': 5141} |
| `chromeRenderers` | {'int': 5141} |
| `chromeTabs` | {'int': 5141} |
| `chromeTabsProbedProfiles` | {'int': 5141} |
| `chromeUtilityPssKb` | {'int': 5141} |
| `desktopPssKb` | {'int': 5141} |
| `hostPssKb` | {'int': 5141} |
| `kind` | {'str': 5141} |
| `memAvailableKb` | {'int': 5141} |
| `memTotalKb` | {'int': 5141} |
| `otherPssKb` | {'int': 5141} |
| `processes` | {'int': 5141} |
| `pssFallbackProcesses` | {'int': 5141} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
