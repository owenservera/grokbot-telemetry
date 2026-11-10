# sandbox_telemetry_parse — 2026-11-10 14:25:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1179275 lines=2614
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2605 |
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
| `chromeBrowserPssKb` | {'int': 2605} |
| `chromeGpuPssKb` | {'int': 2605} |
| `chromeOtherPssKb` | {'int': 2605} |
| `chromeProcesses` | {'int': 2605} |
| `chromeProfiles` | {'int': 2605} |
| `chromeRendererMaxPssKb` | {'int': 2605} |
| `chromeRendererPssKb` | {'int': 2605} |
| `chromeRenderers` | {'int': 2605} |
| `chromeTabs` | {'int': 2605} |
| `chromeTabsProbedProfiles` | {'int': 2605} |
| `chromeUtilityPssKb` | {'int': 2605} |
| `desktopPssKb` | {'int': 2605} |
| `hostPssKb` | {'int': 2605} |
| `kind` | {'str': 2605} |
| `memAvailableKb` | {'int': 2605} |
| `memTotalKb` | {'int': 2605} |
| `otherPssKb` | {'int': 2605} |
| `processes` | {'int': 2605} |
| `pssFallbackProcesses` | {'int': 2605} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
