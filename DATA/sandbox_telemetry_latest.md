# sandbox_telemetry_parse — 2026-11-26 02:41:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3036908 lines=6727
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6712 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6712} |
| `chromeGpuPssKb` | {'int': 6712} |
| `chromeOtherPssKb` | {'int': 6712} |
| `chromeProcesses` | {'int': 6712} |
| `chromeProfiles` | {'int': 6712} |
| `chromeRendererMaxPssKb` | {'int': 6712} |
| `chromeRendererPssKb` | {'int': 6712} |
| `chromeRenderers` | {'int': 6712} |
| `chromeTabs` | {'int': 6712} |
| `chromeTabsProbedProfiles` | {'int': 6712} |
| `chromeUtilityPssKb` | {'int': 6712} |
| `desktopPssKb` | {'int': 6712} |
| `hostPssKb` | {'int': 6712} |
| `kind` | {'str': 6712} |
| `memAvailableKb` | {'int': 6712} |
| `memTotalKb` | {'int': 6712} |
| `otherPssKb` | {'int': 6712} |
| `processes` | {'int': 6712} |
| `pssFallbackProcesses` | {'int': 6712} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
