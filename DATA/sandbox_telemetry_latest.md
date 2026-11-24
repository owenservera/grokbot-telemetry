# sandbox_telemetry_parse — 2026-11-24 14:59:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2329490 lines=5163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5148 |
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
| `chromeBrowserPssKb` | {'int': 5148} |
| `chromeGpuPssKb` | {'int': 5148} |
| `chromeOtherPssKb` | {'int': 5148} |
| `chromeProcesses` | {'int': 5148} |
| `chromeProfiles` | {'int': 5148} |
| `chromeRendererMaxPssKb` | {'int': 5148} |
| `chromeRendererPssKb` | {'int': 5148} |
| `chromeRenderers` | {'int': 5148} |
| `chromeTabs` | {'int': 5148} |
| `chromeTabsProbedProfiles` | {'int': 5148} |
| `chromeUtilityPssKb` | {'int': 5148} |
| `desktopPssKb` | {'int': 5148} |
| `hostPssKb` | {'int': 5148} |
| `kind` | {'str': 5148} |
| `memAvailableKb` | {'int': 5148} |
| `memTotalKb` | {'int': 5148} |
| `otherPssKb` | {'int': 5148} |
| `processes` | {'int': 5148} |
| `pssFallbackProcesses` | {'int': 5148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
