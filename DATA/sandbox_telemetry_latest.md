# sandbox_telemetry_parse — 2026-11-26 10:47:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3216994 lines=7125
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7110 |
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
| `chromeBrowserPssKb` | {'int': 7110} |
| `chromeGpuPssKb` | {'int': 7110} |
| `chromeOtherPssKb` | {'int': 7110} |
| `chromeProcesses` | {'int': 7110} |
| `chromeProfiles` | {'int': 7110} |
| `chromeRendererMaxPssKb` | {'int': 7110} |
| `chromeRendererPssKb` | {'int': 7110} |
| `chromeRenderers` | {'int': 7110} |
| `chromeTabs` | {'int': 7110} |
| `chromeTabsProbedProfiles` | {'int': 7110} |
| `chromeUtilityPssKb` | {'int': 7110} |
| `desktopPssKb` | {'int': 7110} |
| `hostPssKb` | {'int': 7110} |
| `kind` | {'str': 7110} |
| `memAvailableKb` | {'int': 7110} |
| `memTotalKb` | {'int': 7110} |
| `otherPssKb` | {'int': 7110} |
| `processes` | {'int': 7110} |
| `pssFallbackProcesses` | {'int': 7110} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
