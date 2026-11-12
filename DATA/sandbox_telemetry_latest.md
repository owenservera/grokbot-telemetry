# sandbox_telemetry_parse — 2026-11-12 12:44:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2133614 lines=4723
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4714 |
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
| `chromeBrowserPssKb` | {'int': 4714} |
| `chromeGpuPssKb` | {'int': 4714} |
| `chromeOtherPssKb` | {'int': 4714} |
| `chromeProcesses` | {'int': 4714} |
| `chromeProfiles` | {'int': 4714} |
| `chromeRendererMaxPssKb` | {'int': 4714} |
| `chromeRendererPssKb` | {'int': 4714} |
| `chromeRenderers` | {'int': 4714} |
| `chromeTabs` | {'int': 4714} |
| `chromeTabsProbedProfiles` | {'int': 4714} |
| `chromeUtilityPssKb` | {'int': 4714} |
| `desktopPssKb` | {'int': 4714} |
| `hostPssKb` | {'int': 4714} |
| `kind` | {'str': 4714} |
| `memAvailableKb` | {'int': 4714} |
| `memTotalKb` | {'int': 4714} |
| `otherPssKb` | {'int': 4714} |
| `processes` | {'int': 4714} |
| `pssFallbackProcesses` | {'int': 4714} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
