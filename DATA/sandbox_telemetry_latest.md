# sandbox_telemetry_parse — 2026-11-24 01:23:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2072625 lines=4595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4580 |
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
| `chromeBrowserPssKb` | {'int': 4580} |
| `chromeGpuPssKb` | {'int': 4580} |
| `chromeOtherPssKb` | {'int': 4580} |
| `chromeProcesses` | {'int': 4580} |
| `chromeProfiles` | {'int': 4580} |
| `chromeRendererMaxPssKb` | {'int': 4580} |
| `chromeRendererPssKb` | {'int': 4580} |
| `chromeRenderers` | {'int': 4580} |
| `chromeTabs` | {'int': 4580} |
| `chromeTabsProbedProfiles` | {'int': 4580} |
| `chromeUtilityPssKb` | {'int': 4580} |
| `desktopPssKb` | {'int': 4580} |
| `hostPssKb` | {'int': 4580} |
| `kind` | {'str': 4580} |
| `memAvailableKb` | {'int': 4580} |
| `memTotalKb` | {'int': 4580} |
| `otherPssKb` | {'int': 4580} |
| `processes` | {'int': 4580} |
| `pssFallbackProcesses` | {'int': 4580} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
