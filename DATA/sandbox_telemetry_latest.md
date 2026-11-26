# sandbox_telemetry_parse — 2026-11-26 19:49:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=60336 lines=140
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 132 |
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
| `chromeBrowserPssKb` | {'int': 132} |
| `chromeGpuPssKb` | {'int': 132} |
| `chromeOtherPssKb` | {'int': 132} |
| `chromeProcesses` | {'int': 132} |
| `chromeProfiles` | {'int': 132} |
| `chromeRendererMaxPssKb` | {'int': 132} |
| `chromeRendererPssKb` | {'int': 132} |
| `chromeRenderers` | {'int': 132} |
| `chromeTabs` | {'int': 132} |
| `chromeTabsProbedProfiles` | {'int': 132} |
| `chromeUtilityPssKb` | {'int': 132} |
| `desktopPssKb` | {'int': 132} |
| `hostPssKb` | {'int': 132} |
| `kind` | {'str': 132} |
| `memAvailableKb` | {'int': 132} |
| `memTotalKb` | {'int': 132} |
| `otherPssKb` | {'int': 132} |
| `processes` | {'int': 132} |
| `pssFallbackProcesses` | {'int': 132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
