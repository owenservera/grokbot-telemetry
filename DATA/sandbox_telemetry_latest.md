# sandbox_telemetry_parse — 2026-11-27 08:21:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=323574 lines=722
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 714 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 714} |
| `chromeGpuPssKb` | {'int': 714} |
| `chromeOtherPssKb` | {'int': 714} |
| `chromeProcesses` | {'int': 714} |
| `chromeProfiles` | {'int': 714} |
| `chromeRendererMaxPssKb` | {'int': 714} |
| `chromeRendererPssKb` | {'int': 714} |
| `chromeRenderers` | {'int': 714} |
| `chromeTabs` | {'int': 714} |
| `chromeTabsProbedProfiles` | {'int': 714} |
| `chromeUtilityPssKb` | {'int': 714} |
| `desktopPssKb` | {'int': 714} |
| `hostPssKb` | {'int': 714} |
| `kind` | {'str': 714} |
| `memAvailableKb` | {'int': 714} |
| `memTotalKb` | {'int': 714} |
| `otherPssKb` | {'int': 714} |
| `processes` | {'int': 714} |
| `pssFallbackProcesses` | {'int': 714} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
