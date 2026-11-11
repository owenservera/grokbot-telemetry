# sandbox_telemetry_parse — 2026-11-11 23:26:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1868902 lines=4138
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4129 |
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
| `chromeBrowserPssKb` | {'int': 4129} |
| `chromeGpuPssKb` | {'int': 4129} |
| `chromeOtherPssKb` | {'int': 4129} |
| `chromeProcesses` | {'int': 4129} |
| `chromeProfiles` | {'int': 4129} |
| `chromeRendererMaxPssKb` | {'int': 4129} |
| `chromeRendererPssKb` | {'int': 4129} |
| `chromeRenderers` | {'int': 4129} |
| `chromeTabs` | {'int': 4129} |
| `chromeTabsProbedProfiles` | {'int': 4129} |
| `chromeUtilityPssKb` | {'int': 4129} |
| `desktopPssKb` | {'int': 4129} |
| `hostPssKb` | {'int': 4129} |
| `kind` | {'str': 4129} |
| `memAvailableKb` | {'int': 4129} |
| `memTotalKb` | {'int': 4129} |
| `otherPssKb` | {'int': 4129} |
| `processes` | {'int': 4129} |
| `pssFallbackProcesses` | {'int': 4129} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
