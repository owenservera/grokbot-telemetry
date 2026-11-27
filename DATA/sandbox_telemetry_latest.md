# sandbox_telemetry_parse — 2026-11-27 20:18:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=575198 lines=1278
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1270 |
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
| `chromeBrowserPssKb` | {'int': 1270} |
| `chromeGpuPssKb` | {'int': 1270} |
| `chromeOtherPssKb` | {'int': 1270} |
| `chromeProcesses` | {'int': 1270} |
| `chromeProfiles` | {'int': 1270} |
| `chromeRendererMaxPssKb` | {'int': 1270} |
| `chromeRendererPssKb` | {'int': 1270} |
| `chromeRenderers` | {'int': 1270} |
| `chromeTabs` | {'int': 1270} |
| `chromeTabsProbedProfiles` | {'int': 1270} |
| `chromeUtilityPssKb` | {'int': 1270} |
| `desktopPssKb` | {'int': 1270} |
| `hostPssKb` | {'int': 1270} |
| `kind` | {'str': 1270} |
| `memAvailableKb` | {'int': 1270} |
| `memTotalKb` | {'int': 1270} |
| `otherPssKb` | {'int': 1270} |
| `processes` | {'int': 1270} |
| `pssFallbackProcesses` | {'int': 1270} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
