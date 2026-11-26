# sandbox_telemetry_parse — 2026-11-26 21:54:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=101020 lines=230
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 222 |
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
| `chromeBrowserPssKb` | {'int': 222} |
| `chromeGpuPssKb` | {'int': 222} |
| `chromeOtherPssKb` | {'int': 222} |
| `chromeProcesses` | {'int': 222} |
| `chromeProfiles` | {'int': 222} |
| `chromeRendererMaxPssKb` | {'int': 222} |
| `chromeRendererPssKb` | {'int': 222} |
| `chromeRenderers` | {'int': 222} |
| `chromeTabs` | {'int': 222} |
| `chromeTabsProbedProfiles` | {'int': 222} |
| `chromeUtilityPssKb` | {'int': 222} |
| `desktopPssKb` | {'int': 222} |
| `hostPssKb` | {'int': 222} |
| `kind` | {'str': 222} |
| `memAvailableKb` | {'int': 222} |
| `memTotalKb` | {'int': 222} |
| `otherPssKb` | {'int': 222} |
| `processes` | {'int': 222} |
| `pssFallbackProcesses` | {'int': 222} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
