# sandbox_telemetry_parse — 2026-11-09 15:22:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=715416 lines=1589
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1580 |
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
| `chromeBrowserPssKb` | {'int': 1580} |
| `chromeGpuPssKb` | {'int': 1580} |
| `chromeOtherPssKb` | {'int': 1580} |
| `chromeProcesses` | {'int': 1580} |
| `chromeProfiles` | {'int': 1580} |
| `chromeRendererMaxPssKb` | {'int': 1580} |
| `chromeRendererPssKb` | {'int': 1580} |
| `chromeRenderers` | {'int': 1580} |
| `chromeTabs` | {'int': 1580} |
| `chromeTabsProbedProfiles` | {'int': 1580} |
| `chromeUtilityPssKb` | {'int': 1580} |
| `desktopPssKb` | {'int': 1580} |
| `hostPssKb` | {'int': 1580} |
| `kind` | {'str': 1580} |
| `memAvailableKb` | {'int': 1580} |
| `memTotalKb` | {'int': 1580} |
| `otherPssKb` | {'int': 1580} |
| `processes` | {'int': 1580} |
| `pssFallbackProcesses` | {'int': 1580} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
