# sandbox_telemetry_parse — 2026-11-11 01:24:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1415098 lines=3135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3126 |
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
| `chromeBrowserPssKb` | {'int': 3126} |
| `chromeGpuPssKb` | {'int': 3126} |
| `chromeOtherPssKb` | {'int': 3126} |
| `chromeProcesses` | {'int': 3126} |
| `chromeProfiles` | {'int': 3126} |
| `chromeRendererMaxPssKb` | {'int': 3126} |
| `chromeRendererPssKb` | {'int': 3126} |
| `chromeRenderers` | {'int': 3126} |
| `chromeTabs` | {'int': 3126} |
| `chromeTabsProbedProfiles` | {'int': 3126} |
| `chromeUtilityPssKb` | {'int': 3126} |
| `desktopPssKb` | {'int': 3126} |
| `hostPssKb` | {'int': 3126} |
| `kind` | {'str': 3126} |
| `memAvailableKb` | {'int': 3126} |
| `memTotalKb` | {'int': 3126} |
| `otherPssKb` | {'int': 3126} |
| `processes` | {'int': 3126} |
| `pssFallbackProcesses` | {'int': 3126} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
