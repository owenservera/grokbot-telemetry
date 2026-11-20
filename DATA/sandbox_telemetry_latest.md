# sandbox_telemetry_parse — 2026-11-20 11:51:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1701264 lines=3771
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3760 |
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
| `chromeBrowserPssKb` | {'int': 3760} |
| `chromeGpuPssKb` | {'int': 3760} |
| `chromeOtherPssKb` | {'int': 3760} |
| `chromeProcesses` | {'int': 3760} |
| `chromeProfiles` | {'int': 3760} |
| `chromeRendererMaxPssKb` | {'int': 3760} |
| `chromeRendererPssKb` | {'int': 3760} |
| `chromeRenderers` | {'int': 3760} |
| `chromeTabs` | {'int': 3760} |
| `chromeTabsProbedProfiles` | {'int': 3760} |
| `chromeUtilityPssKb` | {'int': 3760} |
| `desktopPssKb` | {'int': 3760} |
| `hostPssKb` | {'int': 3760} |
| `kind` | {'str': 3760} |
| `memAvailableKb` | {'int': 3760} |
| `memTotalKb` | {'int': 3760} |
| `otherPssKb` | {'int': 3760} |
| `processes` | {'int': 3760} |
| `pssFallbackProcesses` | {'int': 3760} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
