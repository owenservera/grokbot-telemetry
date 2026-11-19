# sandbox_telemetry_parse — 2026-11-19 14:39:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1315757 lines=2917
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2908 |
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
| `chromeBrowserPssKb` | {'int': 2908} |
| `chromeGpuPssKb` | {'int': 2908} |
| `chromeOtherPssKb` | {'int': 2908} |
| `chromeProcesses` | {'int': 2908} |
| `chromeProfiles` | {'int': 2908} |
| `chromeRendererMaxPssKb` | {'int': 2908} |
| `chromeRendererPssKb` | {'int': 2908} |
| `chromeRenderers` | {'int': 2908} |
| `chromeTabs` | {'int': 2908} |
| `chromeTabsProbedProfiles` | {'int': 2908} |
| `chromeUtilityPssKb` | {'int': 2908} |
| `desktopPssKb` | {'int': 2908} |
| `hostPssKb` | {'int': 2908} |
| `kind` | {'str': 2908} |
| `memAvailableKb` | {'int': 2908} |
| `memTotalKb` | {'int': 2908} |
| `otherPssKb` | {'int': 2908} |
| `processes` | {'int': 2908} |
| `pssFallbackProcesses` | {'int': 2908} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
