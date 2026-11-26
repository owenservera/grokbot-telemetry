# sandbox_telemetry_parse — 2026-11-26 01:23:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3009769 lines=6667
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6652 |
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
| `chromeBrowserPssKb` | {'int': 6652} |
| `chromeGpuPssKb` | {'int': 6652} |
| `chromeOtherPssKb` | {'int': 6652} |
| `chromeProcesses` | {'int': 6652} |
| `chromeProfiles` | {'int': 6652} |
| `chromeRendererMaxPssKb` | {'int': 6652} |
| `chromeRendererPssKb` | {'int': 6652} |
| `chromeRenderers` | {'int': 6652} |
| `chromeTabs` | {'int': 6652} |
| `chromeTabsProbedProfiles` | {'int': 6652} |
| `chromeUtilityPssKb` | {'int': 6652} |
| `desktopPssKb` | {'int': 6652} |
| `hostPssKb` | {'int': 6652} |
| `kind` | {'str': 6652} |
| `memAvailableKb` | {'int': 6652} |
| `memTotalKb` | {'int': 6652} |
| `otherPssKb` | {'int': 6652} |
| `processes` | {'int': 6652} |
| `pssFallbackProcesses` | {'int': 6652} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
