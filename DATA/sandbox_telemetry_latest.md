# sandbox_telemetry_parse — 2026-11-25 22:08:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2944643 lines=6523
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6508 |
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
| `chromeBrowserPssKb` | {'int': 6508} |
| `chromeGpuPssKb` | {'int': 6508} |
| `chromeOtherPssKb` | {'int': 6508} |
| `chromeProcesses` | {'int': 6508} |
| `chromeProfiles` | {'int': 6508} |
| `chromeRendererMaxPssKb` | {'int': 6508} |
| `chromeRendererPssKb` | {'int': 6508} |
| `chromeRenderers` | {'int': 6508} |
| `chromeTabs` | {'int': 6508} |
| `chromeTabsProbedProfiles` | {'int': 6508} |
| `chromeUtilityPssKb` | {'int': 6508} |
| `desktopPssKb` | {'int': 6508} |
| `hostPssKb` | {'int': 6508} |
| `kind` | {'str': 6508} |
| `memAvailableKb` | {'int': 6508} |
| `memTotalKb` | {'int': 6508} |
| `otherPssKb` | {'int': 6508} |
| `processes` | {'int': 6508} |
| `pssFallbackProcesses` | {'int': 6508} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
