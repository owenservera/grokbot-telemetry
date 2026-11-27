# sandbox_telemetry_parse — 2026-11-27 19:13:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=554832 lines=1233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1225 |
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
| `chromeBrowserPssKb` | {'int': 1225} |
| `chromeGpuPssKb` | {'int': 1225} |
| `chromeOtherPssKb` | {'int': 1225} |
| `chromeProcesses` | {'int': 1225} |
| `chromeProfiles` | {'int': 1225} |
| `chromeRendererMaxPssKb` | {'int': 1225} |
| `chromeRendererPssKb` | {'int': 1225} |
| `chromeRenderers` | {'int': 1225} |
| `chromeTabs` | {'int': 1225} |
| `chromeTabsProbedProfiles` | {'int': 1225} |
| `chromeUtilityPssKb` | {'int': 1225} |
| `desktopPssKb` | {'int': 1225} |
| `hostPssKb` | {'int': 1225} |
| `kind` | {'str': 1225} |
| `memAvailableKb` | {'int': 1225} |
| `memTotalKb` | {'int': 1225} |
| `otherPssKb` | {'int': 1225} |
| `processes` | {'int': 1225} |
| `pssFallbackProcesses` | {'int': 1225} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
