# sandbox_telemetry_parse — 2026-11-27 15:27:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=479657 lines=1067
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1059 |
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
| `chromeBrowserPssKb` | {'int': 1059} |
| `chromeGpuPssKb` | {'int': 1059} |
| `chromeOtherPssKb` | {'int': 1059} |
| `chromeProcesses` | {'int': 1059} |
| `chromeProfiles` | {'int': 1059} |
| `chromeRendererMaxPssKb` | {'int': 1059} |
| `chromeRendererPssKb` | {'int': 1059} |
| `chromeRenderers` | {'int': 1059} |
| `chromeTabs` | {'int': 1059} |
| `chromeTabsProbedProfiles` | {'int': 1059} |
| `chromeUtilityPssKb` | {'int': 1059} |
| `desktopPssKb` | {'int': 1059} |
| `hostPssKb` | {'int': 1059} |
| `kind` | {'str': 1059} |
| `memAvailableKb` | {'int': 1059} |
| `memTotalKb` | {'int': 1059} |
| `otherPssKb` | {'int': 1059} |
| `processes` | {'int': 1059} |
| `pssFallbackProcesses` | {'int': 1059} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
