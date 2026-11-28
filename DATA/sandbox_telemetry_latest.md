# sandbox_telemetry_parse — 2026-11-28 16:15:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=960684 lines=2130
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2122 |
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
| `chromeBrowserPssKb` | {'int': 2122} |
| `chromeGpuPssKb` | {'int': 2122} |
| `chromeOtherPssKb` | {'int': 2122} |
| `chromeProcesses` | {'int': 2122} |
| `chromeProfiles` | {'int': 2122} |
| `chromeRendererMaxPssKb` | {'int': 2122} |
| `chromeRendererPssKb` | {'int': 2122} |
| `chromeRenderers` | {'int': 2122} |
| `chromeTabs` | {'int': 2122} |
| `chromeTabsProbedProfiles` | {'int': 2122} |
| `chromeUtilityPssKb` | {'int': 2122} |
| `desktopPssKb` | {'int': 2122} |
| `hostPssKb` | {'int': 2122} |
| `kind` | {'str': 2122} |
| `memAvailableKb` | {'int': 2122} |
| `memTotalKb` | {'int': 2122} |
| `otherPssKb` | {'int': 2122} |
| `processes` | {'int': 2122} |
| `pssFallbackProcesses` | {'int': 2122} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
