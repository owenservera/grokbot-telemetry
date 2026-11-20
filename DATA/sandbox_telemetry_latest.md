# sandbox_telemetry_parse — 2026-11-20 18:25:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1833987 lines=4066
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4053 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4053} |
| `chromeGpuPssKb` | {'int': 4053} |
| `chromeOtherPssKb` | {'int': 4053} |
| `chromeProcesses` | {'int': 4053} |
| `chromeProfiles` | {'int': 4053} |
| `chromeRendererMaxPssKb` | {'int': 4053} |
| `chromeRendererPssKb` | {'int': 4053} |
| `chromeRenderers` | {'int': 4053} |
| `chromeTabs` | {'int': 4053} |
| `chromeTabsProbedProfiles` | {'int': 4053} |
| `chromeUtilityPssKb` | {'int': 4053} |
| `desktopPssKb` | {'int': 4053} |
| `hostPssKb` | {'int': 4053} |
| `kind` | {'str': 4053} |
| `memAvailableKb` | {'int': 4053} |
| `memTotalKb` | {'int': 4053} |
| `otherPssKb` | {'int': 4053} |
| `processes` | {'int': 4053} |
| `pssFallbackProcesses` | {'int': 4053} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
