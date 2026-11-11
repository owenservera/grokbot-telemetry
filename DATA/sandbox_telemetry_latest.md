# sandbox_telemetry_parse — 2026-11-11 01:40:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1420072 lines=3146
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3137 |
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
| `chromeBrowserPssKb` | {'int': 3137} |
| `chromeGpuPssKb` | {'int': 3137} |
| `chromeOtherPssKb` | {'int': 3137} |
| `chromeProcesses` | {'int': 3137} |
| `chromeProfiles` | {'int': 3137} |
| `chromeRendererMaxPssKb` | {'int': 3137} |
| `chromeRendererPssKb` | {'int': 3137} |
| `chromeRenderers` | {'int': 3137} |
| `chromeTabs` | {'int': 3137} |
| `chromeTabsProbedProfiles` | {'int': 3137} |
| `chromeUtilityPssKb` | {'int': 3137} |
| `desktopPssKb` | {'int': 3137} |
| `hostPssKb` | {'int': 3137} |
| `kind` | {'str': 3137} |
| `memAvailableKb` | {'int': 3137} |
| `memTotalKb` | {'int': 3137} |
| `otherPssKb` | {'int': 3137} |
| `processes` | {'int': 3137} |
| `pssFallbackProcesses` | {'int': 3137} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
