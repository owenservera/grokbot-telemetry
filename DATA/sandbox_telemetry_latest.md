# sandbox_telemetry_parse — 2026-11-27 17:06:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=509091 lines=1132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1124 |
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
| `chromeBrowserPssKb` | {'int': 1124} |
| `chromeGpuPssKb` | {'int': 1124} |
| `chromeOtherPssKb` | {'int': 1124} |
| `chromeProcesses` | {'int': 1124} |
| `chromeProfiles` | {'int': 1124} |
| `chromeRendererMaxPssKb` | {'int': 1124} |
| `chromeRendererPssKb` | {'int': 1124} |
| `chromeRenderers` | {'int': 1124} |
| `chromeTabs` | {'int': 1124} |
| `chromeTabsProbedProfiles` | {'int': 1124} |
| `chromeUtilityPssKb` | {'int': 1124} |
| `desktopPssKb` | {'int': 1124} |
| `hostPssKb` | {'int': 1124} |
| `kind` | {'str': 1124} |
| `memAvailableKb` | {'int': 1124} |
| `memTotalKb` | {'int': 1124} |
| `otherPssKb` | {'int': 1124} |
| `processes` | {'int': 1124} |
| `pssFallbackProcesses` | {'int': 1124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
