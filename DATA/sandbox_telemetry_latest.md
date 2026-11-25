# sandbox_telemetry_parse — 2026-11-25 04:10:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2586039 lines=5730
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5715 |
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
| `chromeBrowserPssKb` | {'int': 5715} |
| `chromeGpuPssKb` | {'int': 5715} |
| `chromeOtherPssKb` | {'int': 5715} |
| `chromeProcesses` | {'int': 5715} |
| `chromeProfiles` | {'int': 5715} |
| `chromeRendererMaxPssKb` | {'int': 5715} |
| `chromeRendererPssKb` | {'int': 5715} |
| `chromeRenderers` | {'int': 5715} |
| `chromeTabs` | {'int': 5715} |
| `chromeTabsProbedProfiles` | {'int': 5715} |
| `chromeUtilityPssKb` | {'int': 5715} |
| `desktopPssKb` | {'int': 5715} |
| `hostPssKb` | {'int': 5715} |
| `kind` | {'str': 5715} |
| `memAvailableKb` | {'int': 5715} |
| `memTotalKb` | {'int': 5715} |
| `otherPssKb` | {'int': 5715} |
| `processes` | {'int': 5715} |
| `pssFallbackProcesses` | {'int': 5715} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
