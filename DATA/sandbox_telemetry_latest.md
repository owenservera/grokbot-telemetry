# sandbox_telemetry_parse — 2026-11-06 13:27:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=29488 lines=71
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 64 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 64} |
| `chromeGpuPssKb` | {'int': 64} |
| `chromeOtherPssKb` | {'int': 64} |
| `chromeProcesses` | {'int': 64} |
| `chromeProfiles` | {'int': 64} |
| `chromeRendererMaxPssKb` | {'int': 64} |
| `chromeRendererPssKb` | {'int': 64} |
| `chromeRenderers` | {'int': 64} |
| `chromeTabs` | {'int': 64} |
| `chromeTabsProbedProfiles` | {'int': 64} |
| `chromeUtilityPssKb` | {'int': 64} |
| `desktopPssKb` | {'int': 64} |
| `hostPssKb` | {'int': 64} |
| `kind` | {'str': 64} |
| `memAvailableKb` | {'int': 64} |
| `memTotalKb` | {'int': 64} |
| `otherPssKb` | {'int': 64} |
| `processes` | {'int': 64} |
| `pssFallbackProcesses` | {'int': 64} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
