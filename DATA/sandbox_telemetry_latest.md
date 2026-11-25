# sandbox_telemetry_parse — 2026-11-25 17:51:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2859632 lines=6335
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6320 |
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
| `chromeBrowserPssKb` | {'int': 6320} |
| `chromeGpuPssKb` | {'int': 6320} |
| `chromeOtherPssKb` | {'int': 6320} |
| `chromeProcesses` | {'int': 6320} |
| `chromeProfiles` | {'int': 6320} |
| `chromeRendererMaxPssKb` | {'int': 6320} |
| `chromeRendererPssKb` | {'int': 6320} |
| `chromeRenderers` | {'int': 6320} |
| `chromeTabs` | {'int': 6320} |
| `chromeTabsProbedProfiles` | {'int': 6320} |
| `chromeUtilityPssKb` | {'int': 6320} |
| `desktopPssKb` | {'int': 6320} |
| `hostPssKb` | {'int': 6320} |
| `kind` | {'str': 6320} |
| `memAvailableKb` | {'int': 6320} |
| `memTotalKb` | {'int': 6320} |
| `otherPssKb` | {'int': 6320} |
| `processes` | {'int': 6320} |
| `pssFallbackProcesses` | {'int': 6320} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
