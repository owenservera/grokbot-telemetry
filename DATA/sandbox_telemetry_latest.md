# sandbox_telemetry_parse — 2026-11-25 10:41:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2722625 lines=6032
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6017 |
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
| `chromeBrowserPssKb` | {'int': 6017} |
| `chromeGpuPssKb` | {'int': 6017} |
| `chromeOtherPssKb` | {'int': 6017} |
| `chromeProcesses` | {'int': 6017} |
| `chromeProfiles` | {'int': 6017} |
| `chromeRendererMaxPssKb` | {'int': 6017} |
| `chromeRendererPssKb` | {'int': 6017} |
| `chromeRenderers` | {'int': 6017} |
| `chromeTabs` | {'int': 6017} |
| `chromeTabsProbedProfiles` | {'int': 6017} |
| `chromeUtilityPssKb` | {'int': 6017} |
| `desktopPssKb` | {'int': 6017} |
| `hostPssKb` | {'int': 6017} |
| `kind` | {'str': 6017} |
| `memAvailableKb` | {'int': 6017} |
| `memTotalKb` | {'int': 6017} |
| `otherPssKb` | {'int': 6017} |
| `processes` | {'int': 6017} |
| `pssFallbackProcesses` | {'int': 6017} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
