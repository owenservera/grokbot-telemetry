# sandbox_telemetry_parse — 2026-11-11 21:37:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1829072 lines=4050
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4041 |
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
| `chromeBrowserPssKb` | {'int': 4041} |
| `chromeGpuPssKb` | {'int': 4041} |
| `chromeOtherPssKb` | {'int': 4041} |
| `chromeProcesses` | {'int': 4041} |
| `chromeProfiles` | {'int': 4041} |
| `chromeRendererMaxPssKb` | {'int': 4041} |
| `chromeRendererPssKb` | {'int': 4041} |
| `chromeRenderers` | {'int': 4041} |
| `chromeTabs` | {'int': 4041} |
| `chromeTabsProbedProfiles` | {'int': 4041} |
| `chromeUtilityPssKb` | {'int': 4041} |
| `desktopPssKb` | {'int': 4041} |
| `hostPssKb` | {'int': 4041} |
| `kind` | {'str': 4041} |
| `memAvailableKb` | {'int': 4041} |
| `memTotalKb` | {'int': 4041} |
| `otherPssKb` | {'int': 4041} |
| `processes` | {'int': 4041} |
| `pssFallbackProcesses` | {'int': 4041} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
