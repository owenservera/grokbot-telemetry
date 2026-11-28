# sandbox_telemetry_parse — 2026-11-28 06:20:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=765236 lines=1698
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1690 |
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
| `chromeBrowserPssKb` | {'int': 1690} |
| `chromeGpuPssKb` | {'int': 1690} |
| `chromeOtherPssKb` | {'int': 1690} |
| `chromeProcesses` | {'int': 1690} |
| `chromeProfiles` | {'int': 1690} |
| `chromeRendererMaxPssKb` | {'int': 1690} |
| `chromeRendererPssKb` | {'int': 1690} |
| `chromeRenderers` | {'int': 1690} |
| `chromeTabs` | {'int': 1690} |
| `chromeTabsProbedProfiles` | {'int': 1690} |
| `chromeUtilityPssKb` | {'int': 1690} |
| `desktopPssKb` | {'int': 1690} |
| `hostPssKb` | {'int': 1690} |
| `kind` | {'str': 1690} |
| `memAvailableKb` | {'int': 1690} |
| `memTotalKb` | {'int': 1690} |
| `otherPssKb` | {'int': 1690} |
| `processes` | {'int': 1690} |
| `pssFallbackProcesses` | {'int': 1690} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
