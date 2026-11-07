# sandbox_telemetry_parse — 2026-11-07 05:14:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=323674 lines=723
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 714 |
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
