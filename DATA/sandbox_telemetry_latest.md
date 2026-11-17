# sandbox_telemetry_parse — 2026-11-17 21:23:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=545421 lines=1212
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1205 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1205} |
| `chromeGpuPssKb` | {'int': 1205} |
| `chromeOtherPssKb` | {'int': 1205} |
| `chromeProcesses` | {'int': 1205} |
| `chromeProfiles` | {'int': 1205} |
| `chromeRendererMaxPssKb` | {'int': 1205} |
| `chromeRendererPssKb` | {'int': 1205} |
| `chromeRenderers` | {'int': 1205} |
| `chromeTabs` | {'int': 1205} |
| `chromeTabsProbedProfiles` | {'int': 1205} |
| `chromeUtilityPssKb` | {'int': 1205} |
| `desktopPssKb` | {'int': 1205} |
| `hostPssKb` | {'int': 1205} |
| `kind` | {'str': 1205} |
| `memAvailableKb` | {'int': 1205} |
| `memTotalKb` | {'int': 1205} |
| `otherPssKb` | {'int': 1205} |
| `processes` | {'int': 1205} |
| `pssFallbackProcesses` | {'int': 1205} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
