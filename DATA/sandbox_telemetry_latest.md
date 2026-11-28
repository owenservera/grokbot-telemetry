# sandbox_telemetry_parse — 2026-11-28 03:49:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=721366 lines=1601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1593 |
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
| `chromeBrowserPssKb` | {'int': 1593} |
| `chromeGpuPssKb` | {'int': 1593} |
| `chromeOtherPssKb` | {'int': 1593} |
| `chromeProcesses` | {'int': 1593} |
| `chromeProfiles` | {'int': 1593} |
| `chromeRendererMaxPssKb` | {'int': 1593} |
| `chromeRendererPssKb` | {'int': 1593} |
| `chromeRenderers` | {'int': 1593} |
| `chromeTabs` | {'int': 1593} |
| `chromeTabsProbedProfiles` | {'int': 1593} |
| `chromeUtilityPssKb` | {'int': 1593} |
| `desktopPssKb` | {'int': 1593} |
| `hostPssKb` | {'int': 1593} |
| `kind` | {'str': 1593} |
| `memAvailableKb` | {'int': 1593} |
| `memTotalKb` | {'int': 1593} |
| `otherPssKb` | {'int': 1593} |
| `processes` | {'int': 1593} |
| `pssFallbackProcesses` | {'int': 1593} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
