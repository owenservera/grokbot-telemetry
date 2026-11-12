# sandbox_telemetry_parse — 2026-11-12 03:36:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1952203 lines=4322
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4313 |
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
| `chromeBrowserPssKb` | {'int': 4313} |
| `chromeGpuPssKb` | {'int': 4313} |
| `chromeOtherPssKb` | {'int': 4313} |
| `chromeProcesses` | {'int': 4313} |
| `chromeProfiles` | {'int': 4313} |
| `chromeRendererMaxPssKb` | {'int': 4313} |
| `chromeRendererPssKb` | {'int': 4313} |
| `chromeRenderers` | {'int': 4313} |
| `chromeTabs` | {'int': 4313} |
| `chromeTabsProbedProfiles` | {'int': 4313} |
| `chromeUtilityPssKb` | {'int': 4313} |
| `desktopPssKb` | {'int': 4313} |
| `hostPssKb` | {'int': 4313} |
| `kind` | {'str': 4313} |
| `memAvailableKb` | {'int': 4313} |
| `memTotalKb` | {'int': 4313} |
| `otherPssKb` | {'int': 4313} |
| `processes` | {'int': 4313} |
| `pssFallbackProcesses` | {'int': 4313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
