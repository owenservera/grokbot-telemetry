# sandbox_telemetry_parse — 2026-11-06 20:05:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=145478 lines=329
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 320 |
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
| `chromeBrowserPssKb` | {'int': 320} |
| `chromeGpuPssKb` | {'int': 320} |
| `chromeOtherPssKb` | {'int': 320} |
| `chromeProcesses` | {'int': 320} |
| `chromeProfiles` | {'int': 320} |
| `chromeRendererMaxPssKb` | {'int': 320} |
| `chromeRendererPssKb` | {'int': 320} |
| `chromeRenderers` | {'int': 320} |
| `chromeTabs` | {'int': 320} |
| `chromeTabsProbedProfiles` | {'int': 320} |
| `chromeUtilityPssKb` | {'int': 320} |
| `desktopPssKb` | {'int': 320} |
| `hostPssKb` | {'int': 320} |
| `kind` | {'str': 320} |
| `memAvailableKb` | {'int': 320} |
| `memTotalKb` | {'int': 320} |
| `otherPssKb` | {'int': 320} |
| `processes` | {'int': 320} |
| `pssFallbackProcesses` | {'int': 320} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
