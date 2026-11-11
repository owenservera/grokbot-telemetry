# sandbox_telemetry_parse — 2026-11-11 11:15:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1602782 lines=3550
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3541 |
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
| `chromeBrowserPssKb` | {'int': 3541} |
| `chromeGpuPssKb` | {'int': 3541} |
| `chromeOtherPssKb` | {'int': 3541} |
| `chromeProcesses` | {'int': 3541} |
| `chromeProfiles` | {'int': 3541} |
| `chromeRendererMaxPssKb` | {'int': 3541} |
| `chromeRendererPssKb` | {'int': 3541} |
| `chromeRenderers` | {'int': 3541} |
| `chromeTabs` | {'int': 3541} |
| `chromeTabsProbedProfiles` | {'int': 3541} |
| `chromeUtilityPssKb` | {'int': 3541} |
| `desktopPssKb` | {'int': 3541} |
| `hostPssKb` | {'int': 3541} |
| `kind` | {'str': 3541} |
| `memAvailableKb` | {'int': 3541} |
| `memTotalKb` | {'int': 3541} |
| `otherPssKb` | {'int': 3541} |
| `processes` | {'int': 3541} |
| `pssFallbackProcesses` | {'int': 3541} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
