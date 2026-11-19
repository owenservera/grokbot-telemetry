# sandbox_telemetry_parse — 2026-11-19 16:03:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1342932 lines=2977
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2968 |
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
| `chromeBrowserPssKb` | {'int': 2968} |
| `chromeGpuPssKb` | {'int': 2968} |
| `chromeOtherPssKb` | {'int': 2968} |
| `chromeProcesses` | {'int': 2968} |
| `chromeProfiles` | {'int': 2968} |
| `chromeRendererMaxPssKb` | {'int': 2968} |
| `chromeRendererPssKb` | {'int': 2968} |
| `chromeRenderers` | {'int': 2968} |
| `chromeTabs` | {'int': 2968} |
| `chromeTabsProbedProfiles` | {'int': 2968} |
| `chromeUtilityPssKb` | {'int': 2968} |
| `desktopPssKb` | {'int': 2968} |
| `hostPssKb` | {'int': 2968} |
| `kind` | {'str': 2968} |
| `memAvailableKb` | {'int': 2968} |
| `memTotalKb` | {'int': 2968} |
| `otherPssKb` | {'int': 2968} |
| `processes` | {'int': 2968} |
| `pssFallbackProcesses` | {'int': 2968} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
