# sandbox_telemetry_parse — 2026-11-12 23:40:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2376322 lines=5259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5250 |
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
| `chromeBrowserPssKb` | {'int': 5250} |
| `chromeGpuPssKb` | {'int': 5250} |
| `chromeOtherPssKb` | {'int': 5250} |
| `chromeProcesses` | {'int': 5250} |
| `chromeProfiles` | {'int': 5250} |
| `chromeRendererMaxPssKb` | {'int': 5250} |
| `chromeRendererPssKb` | {'int': 5250} |
| `chromeRenderers` | {'int': 5250} |
| `chromeTabs` | {'int': 5250} |
| `chromeTabsProbedProfiles` | {'int': 5250} |
| `chromeUtilityPssKb` | {'int': 5250} |
| `desktopPssKb` | {'int': 5250} |
| `hostPssKb` | {'int': 5250} |
| `kind` | {'str': 5250} |
| `memAvailableKb` | {'int': 5250} |
| `memTotalKb` | {'int': 5250} |
| `otherPssKb` | {'int': 5250} |
| `processes` | {'int': 5250} |
| `pssFallbackProcesses` | {'int': 5250} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
