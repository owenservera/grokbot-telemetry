# sandbox_telemetry_parse — 2026-11-24 05:05:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2139992 lines=4744
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4729 |
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
| `chromeBrowserPssKb` | {'int': 4729} |
| `chromeGpuPssKb` | {'int': 4729} |
| `chromeOtherPssKb` | {'int': 4729} |
| `chromeProcesses` | {'int': 4729} |
| `chromeProfiles` | {'int': 4729} |
| `chromeRendererMaxPssKb` | {'int': 4729} |
| `chromeRendererPssKb` | {'int': 4729} |
| `chromeRenderers` | {'int': 4729} |
| `chromeTabs` | {'int': 4729} |
| `chromeTabsProbedProfiles` | {'int': 4729} |
| `chromeUtilityPssKb` | {'int': 4729} |
| `desktopPssKb` | {'int': 4729} |
| `hostPssKb` | {'int': 4729} |
| `kind` | {'str': 4729} |
| `memAvailableKb` | {'int': 4729} |
| `memTotalKb` | {'int': 4729} |
| `otherPssKb` | {'int': 4729} |
| `processes` | {'int': 4729} |
| `pssFallbackProcesses` | {'int': 4729} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
