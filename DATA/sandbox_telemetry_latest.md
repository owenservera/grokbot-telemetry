# sandbox_telemetry_parse — 2026-11-26 23:51:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=141743 lines=320
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 312 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 312} |
| `chromeGpuPssKb` | {'int': 312} |
| `chromeOtherPssKb` | {'int': 312} |
| `chromeProcesses` | {'int': 312} |
| `chromeProfiles` | {'int': 312} |
| `chromeRendererMaxPssKb` | {'int': 312} |
| `chromeRendererPssKb` | {'int': 312} |
| `chromeRenderers` | {'int': 312} |
| `chromeTabs` | {'int': 312} |
| `chromeTabsProbedProfiles` | {'int': 312} |
| `chromeUtilityPssKb` | {'int': 312} |
| `desktopPssKb` | {'int': 312} |
| `hostPssKb` | {'int': 312} |
| `kind` | {'str': 312} |
| `memAvailableKb` | {'int': 312} |
| `memTotalKb` | {'int': 312} |
| `otherPssKb` | {'int': 312} |
| `processes` | {'int': 312} |
| `pssFallbackProcesses` | {'int': 312} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
