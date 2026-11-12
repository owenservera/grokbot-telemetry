# sandbox_telemetry_parse — 2026-11-12 05:25:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1987485 lines=4400
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4391 |
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
| `chromeBrowserPssKb` | {'int': 4391} |
| `chromeGpuPssKb` | {'int': 4391} |
| `chromeOtherPssKb` | {'int': 4391} |
| `chromeProcesses` | {'int': 4391} |
| `chromeProfiles` | {'int': 4391} |
| `chromeRendererMaxPssKb` | {'int': 4391} |
| `chromeRendererPssKb` | {'int': 4391} |
| `chromeRenderers` | {'int': 4391} |
| `chromeTabs` | {'int': 4391} |
| `chromeTabsProbedProfiles` | {'int': 4391} |
| `chromeUtilityPssKb` | {'int': 4391} |
| `desktopPssKb` | {'int': 4391} |
| `hostPssKb` | {'int': 4391} |
| `kind` | {'str': 4391} |
| `memAvailableKb` | {'int': 4391} |
| `memTotalKb` | {'int': 4391} |
| `otherPssKb` | {'int': 4391} |
| `processes` | {'int': 4391} |
| `pssFallbackProcesses` | {'int': 4391} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
