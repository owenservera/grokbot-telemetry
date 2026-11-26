# sandbox_telemetry_parse — 2026-11-26 12:49:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3256798 lines=7213
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7198 |
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
| `chromeBrowserPssKb` | {'int': 7198} |
| `chromeGpuPssKb` | {'int': 7198} |
| `chromeOtherPssKb` | {'int': 7198} |
| `chromeProcesses` | {'int': 7198} |
| `chromeProfiles` | {'int': 7198} |
| `chromeRendererMaxPssKb` | {'int': 7198} |
| `chromeRendererPssKb` | {'int': 7198} |
| `chromeRenderers` | {'int': 7198} |
| `chromeTabs` | {'int': 7198} |
| `chromeTabsProbedProfiles` | {'int': 7198} |
| `chromeUtilityPssKb` | {'int': 7198} |
| `desktopPssKb` | {'int': 7198} |
| `hostPssKb` | {'int': 7198} |
| `kind` | {'str': 7198} |
| `memAvailableKb` | {'int': 7198} |
| `memTotalKb` | {'int': 7198} |
| `otherPssKb` | {'int': 7198} |
| `processes` | {'int': 7198} |
| `pssFallbackProcesses` | {'int': 7198} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
