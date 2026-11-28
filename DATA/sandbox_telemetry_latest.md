# sandbox_telemetry_parse — 2026-11-28 13:52:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=914064 lines=2027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2019 |
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
| `chromeBrowserPssKb` | {'int': 2019} |
| `chromeGpuPssKb` | {'int': 2019} |
| `chromeOtherPssKb` | {'int': 2019} |
| `chromeProcesses` | {'int': 2019} |
| `chromeProfiles` | {'int': 2019} |
| `chromeRendererMaxPssKb` | {'int': 2019} |
| `chromeRendererPssKb` | {'int': 2019} |
| `chromeRenderers` | {'int': 2019} |
| `chromeTabs` | {'int': 2019} |
| `chromeTabsProbedProfiles` | {'int': 2019} |
| `chromeUtilityPssKb` | {'int': 2019} |
| `desktopPssKb` | {'int': 2019} |
| `hostPssKb` | {'int': 2019} |
| `kind` | {'str': 2019} |
| `memAvailableKb` | {'int': 2019} |
| `memTotalKb` | {'int': 2019} |
| `otherPssKb` | {'int': 2019} |
| `processes` | {'int': 2019} |
| `pssFallbackProcesses` | {'int': 2019} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
