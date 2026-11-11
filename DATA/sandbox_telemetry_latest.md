# sandbox_telemetry_parse — 2026-11-11 12:36:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1634931 lines=3621
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3612 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3612} |
| `chromeGpuPssKb` | {'int': 3612} |
| `chromeOtherPssKb` | {'int': 3612} |
| `chromeProcesses` | {'int': 3612} |
| `chromeProfiles` | {'int': 3612} |
| `chromeRendererMaxPssKb` | {'int': 3612} |
| `chromeRendererPssKb` | {'int': 3612} |
| `chromeRenderers` | {'int': 3612} |
| `chromeTabs` | {'int': 3612} |
| `chromeTabsProbedProfiles` | {'int': 3612} |
| `chromeUtilityPssKb` | {'int': 3612} |
| `desktopPssKb` | {'int': 3612} |
| `hostPssKb` | {'int': 3612} |
| `kind` | {'str': 3612} |
| `memAvailableKb` | {'int': 3612} |
| `memTotalKb` | {'int': 3612} |
| `otherPssKb` | {'int': 3612} |
| `processes` | {'int': 3612} |
| `pssFallbackProcesses` | {'int': 3612} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
