# sandbox_telemetry_parse — 2026-11-20 10:16:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1671879 lines=3706
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3695 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3695} |
| `chromeGpuPssKb` | {'int': 3695} |
| `chromeOtherPssKb` | {'int': 3695} |
| `chromeProcesses` | {'int': 3695} |
| `chromeProfiles` | {'int': 3695} |
| `chromeRendererMaxPssKb` | {'int': 3695} |
| `chromeRendererPssKb` | {'int': 3695} |
| `chromeRenderers` | {'int': 3695} |
| `chromeTabs` | {'int': 3695} |
| `chromeTabsProbedProfiles` | {'int': 3695} |
| `chromeUtilityPssKb` | {'int': 3695} |
| `desktopPssKb` | {'int': 3695} |
| `hostPssKb` | {'int': 3695} |
| `kind` | {'str': 3695} |
| `memAvailableKb` | {'int': 3695} |
| `memTotalKb` | {'int': 3695} |
| `otherPssKb` | {'int': 3695} |
| `processes` | {'int': 3695} |
| `pssFallbackProcesses` | {'int': 3695} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
