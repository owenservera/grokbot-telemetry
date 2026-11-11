# sandbox_telemetry_parse — 2026-11-11 02:32:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1435892 lines=3181
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3172 |
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
| `chromeBrowserPssKb` | {'int': 3172} |
| `chromeGpuPssKb` | {'int': 3172} |
| `chromeOtherPssKb` | {'int': 3172} |
| `chromeProcesses` | {'int': 3172} |
| `chromeProfiles` | {'int': 3172} |
| `chromeRendererMaxPssKb` | {'int': 3172} |
| `chromeRendererPssKb` | {'int': 3172} |
| `chromeRenderers` | {'int': 3172} |
| `chromeTabs` | {'int': 3172} |
| `chromeTabsProbedProfiles` | {'int': 3172} |
| `chromeUtilityPssKb` | {'int': 3172} |
| `desktopPssKb` | {'int': 3172} |
| `hostPssKb` | {'int': 3172} |
| `kind` | {'str': 3172} |
| `memAvailableKb` | {'int': 3172} |
| `memTotalKb` | {'int': 3172} |
| `otherPssKb` | {'int': 3172} |
| `processes` | {'int': 3172} |
| `pssFallbackProcesses` | {'int': 3172} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
