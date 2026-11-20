# sandbox_telemetry_parse — 2026-11-20 10:36:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1679567 lines=3723
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3712 |
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
| `chromeBrowserPssKb` | {'int': 3712} |
| `chromeGpuPssKb` | {'int': 3712} |
| `chromeOtherPssKb` | {'int': 3712} |
| `chromeProcesses` | {'int': 3712} |
| `chromeProfiles` | {'int': 3712} |
| `chromeRendererMaxPssKb` | {'int': 3712} |
| `chromeRendererPssKb` | {'int': 3712} |
| `chromeRenderers` | {'int': 3712} |
| `chromeTabs` | {'int': 3712} |
| `chromeTabsProbedProfiles` | {'int': 3712} |
| `chromeUtilityPssKb` | {'int': 3712} |
| `desktopPssKb` | {'int': 3712} |
| `hostPssKb` | {'int': 3712} |
| `kind` | {'str': 3712} |
| `memAvailableKb` | {'int': 3712} |
| `memTotalKb` | {'int': 3712} |
| `otherPssKb` | {'int': 3712} |
| `processes` | {'int': 3712} |
| `pssFallbackProcesses` | {'int': 3712} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
