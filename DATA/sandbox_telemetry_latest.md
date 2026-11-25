# sandbox_telemetry_parse — 2026-11-25 16:07:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2824810 lines=6258
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6243 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6243} |
| `chromeGpuPssKb` | {'int': 6243} |
| `chromeOtherPssKb` | {'int': 6243} |
| `chromeProcesses` | {'int': 6243} |
| `chromeProfiles` | {'int': 6243} |
| `chromeRendererMaxPssKb` | {'int': 6243} |
| `chromeRendererPssKb` | {'int': 6243} |
| `chromeRenderers` | {'int': 6243} |
| `chromeTabs` | {'int': 6243} |
| `chromeTabsProbedProfiles` | {'int': 6243} |
| `chromeUtilityPssKb` | {'int': 6243} |
| `desktopPssKb` | {'int': 6243} |
| `hostPssKb` | {'int': 6243} |
| `kind` | {'str': 6243} |
| `memAvailableKb` | {'int': 6243} |
| `memTotalKb` | {'int': 6243} |
| `otherPssKb` | {'int': 6243} |
| `processes` | {'int': 6243} |
| `pssFallbackProcesses` | {'int': 6243} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
