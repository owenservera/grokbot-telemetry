# sandbox_telemetry_parse — 2026-11-12 23:55:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2380390 lines=5268
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5259 |
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
| `chromeBrowserPssKb` | {'int': 5259} |
| `chromeGpuPssKb` | {'int': 5259} |
| `chromeOtherPssKb` | {'int': 5259} |
| `chromeProcesses` | {'int': 5259} |
| `chromeProfiles` | {'int': 5259} |
| `chromeRendererMaxPssKb` | {'int': 5259} |
| `chromeRendererPssKb` | {'int': 5259} |
| `chromeRenderers` | {'int': 5259} |
| `chromeTabs` | {'int': 5259} |
| `chromeTabsProbedProfiles` | {'int': 5259} |
| `chromeUtilityPssKb` | {'int': 5259} |
| `desktopPssKb` | {'int': 5259} |
| `hostPssKb` | {'int': 5259} |
| `kind` | {'str': 5259} |
| `memAvailableKb` | {'int': 5259} |
| `memTotalKb` | {'int': 5259} |
| `otherPssKb` | {'int': 5259} |
| `processes` | {'int': 5259} |
| `pssFallbackProcesses` | {'int': 5259} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
