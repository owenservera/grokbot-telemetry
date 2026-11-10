# sandbox_telemetry_parse — 2026-11-10 03:49:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=976999 lines=2167
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2158 |
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
| `chromeBrowserPssKb` | {'int': 2158} |
| `chromeGpuPssKb` | {'int': 2158} |
| `chromeOtherPssKb` | {'int': 2158} |
| `chromeProcesses` | {'int': 2158} |
| `chromeProfiles` | {'int': 2158} |
| `chromeRendererMaxPssKb` | {'int': 2158} |
| `chromeRendererPssKb` | {'int': 2158} |
| `chromeRenderers` | {'int': 2158} |
| `chromeTabs` | {'int': 2158} |
| `chromeTabsProbedProfiles` | {'int': 2158} |
| `chromeUtilityPssKb` | {'int': 2158} |
| `desktopPssKb` | {'int': 2158} |
| `hostPssKb` | {'int': 2158} |
| `kind` | {'str': 2158} |
| `memAvailableKb` | {'int': 2158} |
| `memTotalKb` | {'int': 2158} |
| `otherPssKb` | {'int': 2158} |
| `processes` | {'int': 2158} |
| `pssFallbackProcesses` | {'int': 2158} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
