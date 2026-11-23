# sandbox_telemetry_parse — 2026-11-23 16:45:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1913342 lines=4243
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4228 |
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
| `chromeBrowserPssKb` | {'int': 4228} |
| `chromeGpuPssKb` | {'int': 4228} |
| `chromeOtherPssKb` | {'int': 4228} |
| `chromeProcesses` | {'int': 4228} |
| `chromeProfiles` | {'int': 4228} |
| `chromeRendererMaxPssKb` | {'int': 4228} |
| `chromeRendererPssKb` | {'int': 4228} |
| `chromeRenderers` | {'int': 4228} |
| `chromeTabs` | {'int': 4228} |
| `chromeTabsProbedProfiles` | {'int': 4228} |
| `chromeUtilityPssKb` | {'int': 4228} |
| `desktopPssKb` | {'int': 4228} |
| `hostPssKb` | {'int': 4228} |
| `kind` | {'str': 4228} |
| `memAvailableKb` | {'int': 4228} |
| `memTotalKb` | {'int': 4228} |
| `otherPssKb` | {'int': 4228} |
| `processes` | {'int': 4228} |
| `pssFallbackProcesses` | {'int': 4228} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
