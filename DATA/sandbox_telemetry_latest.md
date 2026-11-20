# sandbox_telemetry_parse — 2026-11-20 19:25:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1853443 lines=4109
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4096 |
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
| `chromeBrowserPssKb` | {'int': 4096} |
| `chromeGpuPssKb` | {'int': 4096} |
| `chromeOtherPssKb` | {'int': 4096} |
| `chromeProcesses` | {'int': 4096} |
| `chromeProfiles` | {'int': 4096} |
| `chromeRendererMaxPssKb` | {'int': 4096} |
| `chromeRendererPssKb` | {'int': 4096} |
| `chromeRenderers` | {'int': 4096} |
| `chromeTabs` | {'int': 4096} |
| `chromeTabsProbedProfiles` | {'int': 4096} |
| `chromeUtilityPssKb` | {'int': 4096} |
| `desktopPssKb` | {'int': 4096} |
| `hostPssKb` | {'int': 4096} |
| `kind` | {'str': 4096} |
| `memAvailableKb` | {'int': 4096} |
| `memTotalKb` | {'int': 4096} |
| `otherPssKb` | {'int': 4096} |
| `processes` | {'int': 4096} |
| `pssFallbackProcesses` | {'int': 4096} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
