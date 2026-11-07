# sandbox_telemetry_parse — 2026-11-07 11:24:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=437178 lines=974
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 965 |
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
| `chromeBrowserPssKb` | {'int': 965} |
| `chromeGpuPssKb` | {'int': 965} |
| `chromeOtherPssKb` | {'int': 965} |
| `chromeProcesses` | {'int': 965} |
| `chromeProfiles` | {'int': 965} |
| `chromeRendererMaxPssKb` | {'int': 965} |
| `chromeRendererPssKb` | {'int': 965} |
| `chromeRenderers` | {'int': 965} |
| `chromeTabs` | {'int': 965} |
| `chromeTabsProbedProfiles` | {'int': 965} |
| `chromeUtilityPssKb` | {'int': 965} |
| `desktopPssKb` | {'int': 965} |
| `hostPssKb` | {'int': 965} |
| `kind` | {'str': 965} |
| `memAvailableKb` | {'int': 965} |
| `memTotalKb` | {'int': 965} |
| `otherPssKb` | {'int': 965} |
| `processes` | {'int': 965} |
| `pssFallbackProcesses` | {'int': 965} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
