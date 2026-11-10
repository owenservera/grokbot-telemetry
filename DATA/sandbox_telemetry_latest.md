# sandbox_telemetry_parse — 2026-11-10 22:47:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1361251 lines=3016
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3007 |
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
| `chromeBrowserPssKb` | {'int': 3007} |
| `chromeGpuPssKb` | {'int': 3007} |
| `chromeOtherPssKb` | {'int': 3007} |
| `chromeProcesses` | {'int': 3007} |
| `chromeProfiles` | {'int': 3007} |
| `chromeRendererMaxPssKb` | {'int': 3007} |
| `chromeRendererPssKb` | {'int': 3007} |
| `chromeRenderers` | {'int': 3007} |
| `chromeTabs` | {'int': 3007} |
| `chromeTabsProbedProfiles` | {'int': 3007} |
| `chromeUtilityPssKb` | {'int': 3007} |
| `desktopPssKb` | {'int': 3007} |
| `hostPssKb` | {'int': 3007} |
| `kind` | {'str': 3007} |
| `memAvailableKb` | {'int': 3007} |
| `memTotalKb` | {'int': 3007} |
| `otherPssKb` | {'int': 3007} |
| `processes` | {'int': 3007} |
| `pssFallbackProcesses` | {'int': 3007} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
