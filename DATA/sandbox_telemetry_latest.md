# sandbox_telemetry_parse — 2026-11-11 17:08:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1730389 lines=3832
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3823 |
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
| `chromeBrowserPssKb` | {'int': 3823} |
| `chromeGpuPssKb` | {'int': 3823} |
| `chromeOtherPssKb` | {'int': 3823} |
| `chromeProcesses` | {'int': 3823} |
| `chromeProfiles` | {'int': 3823} |
| `chromeRendererMaxPssKb` | {'int': 3823} |
| `chromeRendererPssKb` | {'int': 3823} |
| `chromeRenderers` | {'int': 3823} |
| `chromeTabs` | {'int': 3823} |
| `chromeTabsProbedProfiles` | {'int': 3823} |
| `chromeUtilityPssKb` | {'int': 3823} |
| `desktopPssKb` | {'int': 3823} |
| `hostPssKb` | {'int': 3823} |
| `kind` | {'str': 3823} |
| `memAvailableKb` | {'int': 3823} |
| `memTotalKb` | {'int': 3823} |
| `otherPssKb` | {'int': 3823} |
| `processes` | {'int': 3823} |
| `pssFallbackProcesses` | {'int': 3823} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
