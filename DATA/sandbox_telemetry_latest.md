# sandbox_telemetry_parse — 2026-11-11 15:49:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1700520 lines=3766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3757 |
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
| `chromeBrowserPssKb` | {'int': 3757} |
| `chromeGpuPssKb` | {'int': 3757} |
| `chromeOtherPssKb` | {'int': 3757} |
| `chromeProcesses` | {'int': 3757} |
| `chromeProfiles` | {'int': 3757} |
| `chromeRendererMaxPssKb` | {'int': 3757} |
| `chromeRendererPssKb` | {'int': 3757} |
| `chromeRenderers` | {'int': 3757} |
| `chromeTabs` | {'int': 3757} |
| `chromeTabsProbedProfiles` | {'int': 3757} |
| `chromeUtilityPssKb` | {'int': 3757} |
| `desktopPssKb` | {'int': 3757} |
| `hostPssKb` | {'int': 3757} |
| `kind` | {'str': 3757} |
| `memAvailableKb` | {'int': 3757} |
| `memTotalKb` | {'int': 3757} |
| `otherPssKb` | {'int': 3757} |
| `processes` | {'int': 3757} |
| `pssFallbackProcesses` | {'int': 3757} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
