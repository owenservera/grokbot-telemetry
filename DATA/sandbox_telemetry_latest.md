# sandbox_telemetry_parse — 2026-11-09 15:43:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=724023 lines=1608
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1599 |
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
| `chromeBrowserPssKb` | {'int': 1599} |
| `chromeGpuPssKb` | {'int': 1599} |
| `chromeOtherPssKb` | {'int': 1599} |
| `chromeProcesses` | {'int': 1599} |
| `chromeProfiles` | {'int': 1599} |
| `chromeRendererMaxPssKb` | {'int': 1599} |
| `chromeRendererPssKb` | {'int': 1599} |
| `chromeRenderers` | {'int': 1599} |
| `chromeTabs` | {'int': 1599} |
| `chromeTabsProbedProfiles` | {'int': 1599} |
| `chromeUtilityPssKb` | {'int': 1599} |
| `desktopPssKb` | {'int': 1599} |
| `hostPssKb` | {'int': 1599} |
| `kind` | {'str': 1599} |
| `memAvailableKb` | {'int': 1599} |
| `memTotalKb` | {'int': 1599} |
| `otherPssKb` | {'int': 1599} |
| `processes` | {'int': 1599} |
| `pssFallbackProcesses` | {'int': 1599} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
