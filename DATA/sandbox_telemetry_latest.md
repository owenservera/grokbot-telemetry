# sandbox_telemetry_parse — 2026-11-24 18:42:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2400587 lines=5320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5305 |
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
| `chromeBrowserPssKb` | {'int': 5305} |
| `chromeGpuPssKb` | {'int': 5305} |
| `chromeOtherPssKb` | {'int': 5305} |
| `chromeProcesses` | {'int': 5305} |
| `chromeProfiles` | {'int': 5305} |
| `chromeRendererMaxPssKb` | {'int': 5305} |
| `chromeRendererPssKb` | {'int': 5305} |
| `chromeRenderers` | {'int': 5305} |
| `chromeTabs` | {'int': 5305} |
| `chromeTabsProbedProfiles` | {'int': 5305} |
| `chromeUtilityPssKb` | {'int': 5305} |
| `desktopPssKb` | {'int': 5305} |
| `hostPssKb` | {'int': 5305} |
| `kind` | {'str': 5305} |
| `memAvailableKb` | {'int': 5305} |
| `memTotalKb` | {'int': 5305} |
| `otherPssKb` | {'int': 5305} |
| `processes` | {'int': 5305} |
| `pssFallbackProcesses` | {'int': 5305} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
