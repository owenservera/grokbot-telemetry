# sandbox_telemetry_parse — 2026-11-26 16:11:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3323892 lines=7363
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7346 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7346} |
| `chromeGpuPssKb` | {'int': 7346} |
| `chromeOtherPssKb` | {'int': 7346} |
| `chromeProcesses` | {'int': 7346} |
| `chromeProfiles` | {'int': 7346} |
| `chromeRendererMaxPssKb` | {'int': 7346} |
| `chromeRendererPssKb` | {'int': 7346} |
| `chromeRenderers` | {'int': 7346} |
| `chromeTabs` | {'int': 7346} |
| `chromeTabsProbedProfiles` | {'int': 7346} |
| `chromeUtilityPssKb` | {'int': 7346} |
| `desktopPssKb` | {'int': 7346} |
| `hostPssKb` | {'int': 7346} |
| `kind` | {'str': 7346} |
| `memAvailableKb` | {'int': 7346} |
| `memTotalKb` | {'int': 7346} |
| `otherPssKb` | {'int': 7346} |
| `processes` | {'int': 7346} |
| `pssFallbackProcesses` | {'int': 7346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
