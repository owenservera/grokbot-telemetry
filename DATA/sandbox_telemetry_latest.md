# sandbox_telemetry_parse — 2026-11-27 19:26:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=559815 lines=1244
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1236 |
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
| `chromeBrowserPssKb` | {'int': 1236} |
| `chromeGpuPssKb` | {'int': 1236} |
| `chromeOtherPssKb` | {'int': 1236} |
| `chromeProcesses` | {'int': 1236} |
| `chromeProfiles` | {'int': 1236} |
| `chromeRendererMaxPssKb` | {'int': 1236} |
| `chromeRendererPssKb` | {'int': 1236} |
| `chromeRenderers` | {'int': 1236} |
| `chromeTabs` | {'int': 1236} |
| `chromeTabsProbedProfiles` | {'int': 1236} |
| `chromeUtilityPssKb` | {'int': 1236} |
| `desktopPssKb` | {'int': 1236} |
| `hostPssKb` | {'int': 1236} |
| `kind` | {'str': 1236} |
| `memAvailableKb` | {'int': 1236} |
| `memTotalKb` | {'int': 1236} |
| `otherPssKb` | {'int': 1236} |
| `processes` | {'int': 1236} |
| `pssFallbackProcesses` | {'int': 1236} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
