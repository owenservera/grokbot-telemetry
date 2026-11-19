# sandbox_telemetry_parse — 2026-11-19 08:58:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1195432 lines=2651
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2642 |
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
| `chromeBrowserPssKb` | {'int': 2642} |
| `chromeGpuPssKb` | {'int': 2642} |
| `chromeOtherPssKb` | {'int': 2642} |
| `chromeProcesses` | {'int': 2642} |
| `chromeProfiles` | {'int': 2642} |
| `chromeRendererMaxPssKb` | {'int': 2642} |
| `chromeRendererPssKb` | {'int': 2642} |
| `chromeRenderers` | {'int': 2642} |
| `chromeTabs` | {'int': 2642} |
| `chromeTabsProbedProfiles` | {'int': 2642} |
| `chromeUtilityPssKb` | {'int': 2642} |
| `desktopPssKb` | {'int': 2642} |
| `hostPssKb` | {'int': 2642} |
| `kind` | {'str': 2642} |
| `memAvailableKb` | {'int': 2642} |
| `memTotalKb` | {'int': 2642} |
| `otherPssKb` | {'int': 2642} |
| `processes` | {'int': 2642} |
| `pssFallbackProcesses` | {'int': 2642} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
