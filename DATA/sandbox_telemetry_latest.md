# sandbox_telemetry_parse — 2026-11-11 16:18:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1711381 lines=3790
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3781 |
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
| `chromeBrowserPssKb` | {'int': 3781} |
| `chromeGpuPssKb` | {'int': 3781} |
| `chromeOtherPssKb` | {'int': 3781} |
| `chromeProcesses` | {'int': 3781} |
| `chromeProfiles` | {'int': 3781} |
| `chromeRendererMaxPssKb` | {'int': 3781} |
| `chromeRendererPssKb` | {'int': 3781} |
| `chromeRenderers` | {'int': 3781} |
| `chromeTabs` | {'int': 3781} |
| `chromeTabsProbedProfiles` | {'int': 3781} |
| `chromeUtilityPssKb` | {'int': 3781} |
| `desktopPssKb` | {'int': 3781} |
| `hostPssKb` | {'int': 3781} |
| `kind` | {'str': 3781} |
| `memAvailableKb` | {'int': 3781} |
| `memTotalKb` | {'int': 3781} |
| `otherPssKb` | {'int': 3781} |
| `processes` | {'int': 3781} |
| `pssFallbackProcesses` | {'int': 3781} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
