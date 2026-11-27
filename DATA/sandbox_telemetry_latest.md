# sandbox_telemetry_parse — 2026-11-28 00:23:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=653925 lines=1452
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1444 |
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
| `chromeBrowserPssKb` | {'int': 1444} |
| `chromeGpuPssKb` | {'int': 1444} |
| `chromeOtherPssKb` | {'int': 1444} |
| `chromeProcesses` | {'int': 1444} |
| `chromeProfiles` | {'int': 1444} |
| `chromeRendererMaxPssKb` | {'int': 1444} |
| `chromeRendererPssKb` | {'int': 1444} |
| `chromeRenderers` | {'int': 1444} |
| `chromeTabs` | {'int': 1444} |
| `chromeTabsProbedProfiles` | {'int': 1444} |
| `chromeUtilityPssKb` | {'int': 1444} |
| `desktopPssKb` | {'int': 1444} |
| `hostPssKb` | {'int': 1444} |
| `kind` | {'str': 1444} |
| `memAvailableKb` | {'int': 1444} |
| `memTotalKb` | {'int': 1444} |
| `otherPssKb` | {'int': 1444} |
| `processes` | {'int': 1444} |
| `pssFallbackProcesses` | {'int': 1444} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
