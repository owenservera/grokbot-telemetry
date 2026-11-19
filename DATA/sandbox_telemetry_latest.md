# sandbox_telemetry_parse — 2026-11-19 10:45:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1234777 lines=2738
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2729 |
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
| `chromeBrowserPssKb` | {'int': 2729} |
| `chromeGpuPssKb` | {'int': 2729} |
| `chromeOtherPssKb` | {'int': 2729} |
| `chromeProcesses` | {'int': 2729} |
| `chromeProfiles` | {'int': 2729} |
| `chromeRendererMaxPssKb` | {'int': 2729} |
| `chromeRendererPssKb` | {'int': 2729} |
| `chromeRenderers` | {'int': 2729} |
| `chromeTabs` | {'int': 2729} |
| `chromeTabsProbedProfiles` | {'int': 2729} |
| `chromeUtilityPssKb` | {'int': 2729} |
| `desktopPssKb` | {'int': 2729} |
| `hostPssKb` | {'int': 2729} |
| `kind` | {'str': 2729} |
| `memAvailableKb` | {'int': 2729} |
| `memTotalKb` | {'int': 2729} |
| `otherPssKb` | {'int': 2729} |
| `processes` | {'int': 2729} |
| `pssFallbackProcesses` | {'int': 2729} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
