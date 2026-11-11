# sandbox_telemetry_parse — 2026-11-11 17:34:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1739901 lines=3853
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3844 |
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
| `chromeBrowserPssKb` | {'int': 3844} |
| `chromeGpuPssKb` | {'int': 3844} |
| `chromeOtherPssKb` | {'int': 3844} |
| `chromeProcesses` | {'int': 3844} |
| `chromeProfiles` | {'int': 3844} |
| `chromeRendererMaxPssKb` | {'int': 3844} |
| `chromeRendererPssKb` | {'int': 3844} |
| `chromeRenderers` | {'int': 3844} |
| `chromeTabs` | {'int': 3844} |
| `chromeTabsProbedProfiles` | {'int': 3844} |
| `chromeUtilityPssKb` | {'int': 3844} |
| `desktopPssKb` | {'int': 3844} |
| `hostPssKb` | {'int': 3844} |
| `kind` | {'str': 3844} |
| `memAvailableKb` | {'int': 3844} |
| `memTotalKb` | {'int': 3844} |
| `otherPssKb` | {'int': 3844} |
| `processes` | {'int': 3844} |
| `pssFallbackProcesses` | {'int': 3844} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
