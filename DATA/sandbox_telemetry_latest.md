# sandbox_telemetry_parse — 2026-11-20 10:30:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1677759 lines=3719
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3708 |
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
| `chromeBrowserPssKb` | {'int': 3708} |
| `chromeGpuPssKb` | {'int': 3708} |
| `chromeOtherPssKb` | {'int': 3708} |
| `chromeProcesses` | {'int': 3708} |
| `chromeProfiles` | {'int': 3708} |
| `chromeRendererMaxPssKb` | {'int': 3708} |
| `chromeRendererPssKb` | {'int': 3708} |
| `chromeRenderers` | {'int': 3708} |
| `chromeTabs` | {'int': 3708} |
| `chromeTabsProbedProfiles` | {'int': 3708} |
| `chromeUtilityPssKb` | {'int': 3708} |
| `desktopPssKb` | {'int': 3708} |
| `hostPssKb` | {'int': 3708} |
| `kind` | {'str': 3708} |
| `memAvailableKb` | {'int': 3708} |
| `memTotalKb` | {'int': 3708} |
| `otherPssKb` | {'int': 3708} |
| `processes` | {'int': 3708} |
| `pssFallbackProcesses` | {'int': 3708} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
