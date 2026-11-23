# sandbox_telemetry_parse — 2026-11-23 19:24:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1959046 lines=4344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4329 |
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
| `chromeBrowserPssKb` | {'int': 4329} |
| `chromeGpuPssKb` | {'int': 4329} |
| `chromeOtherPssKb` | {'int': 4329} |
| `chromeProcesses` | {'int': 4329} |
| `chromeProfiles` | {'int': 4329} |
| `chromeRendererMaxPssKb` | {'int': 4329} |
| `chromeRendererPssKb` | {'int': 4329} |
| `chromeRenderers` | {'int': 4329} |
| `chromeTabs` | {'int': 4329} |
| `chromeTabsProbedProfiles` | {'int': 4329} |
| `chromeUtilityPssKb` | {'int': 4329} |
| `desktopPssKb` | {'int': 4329} |
| `hostPssKb` | {'int': 4329} |
| `kind` | {'str': 4329} |
| `memAvailableKb` | {'int': 4329} |
| `memTotalKb` | {'int': 4329} |
| `otherPssKb` | {'int': 4329} |
| `processes` | {'int': 4329} |
| `pssFallbackProcesses` | {'int': 4329} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
