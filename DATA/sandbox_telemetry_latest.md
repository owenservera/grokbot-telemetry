# sandbox_telemetry_parse — 2026-11-24 23:04:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2489731 lines=5517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5502 |
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
| `chromeBrowserPssKb` | {'int': 5502} |
| `chromeGpuPssKb` | {'int': 5502} |
| `chromeOtherPssKb` | {'int': 5502} |
| `chromeProcesses` | {'int': 5502} |
| `chromeProfiles` | {'int': 5502} |
| `chromeRendererMaxPssKb` | {'int': 5502} |
| `chromeRendererPssKb` | {'int': 5502} |
| `chromeRenderers` | {'int': 5502} |
| `chromeTabs` | {'int': 5502} |
| `chromeTabsProbedProfiles` | {'int': 5502} |
| `chromeUtilityPssKb` | {'int': 5502} |
| `desktopPssKb` | {'int': 5502} |
| `hostPssKb` | {'int': 5502} |
| `kind` | {'str': 5502} |
| `memAvailableKb` | {'int': 5502} |
| `memTotalKb` | {'int': 5502} |
| `otherPssKb` | {'int': 5502} |
| `processes` | {'int': 5502} |
| `pssFallbackProcesses` | {'int': 5502} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
