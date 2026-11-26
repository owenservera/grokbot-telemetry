# sandbox_telemetry_parse — 2026-11-26 04:36:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3075356 lines=6812
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6797 |
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
| `chromeBrowserPssKb` | {'int': 6797} |
| `chromeGpuPssKb` | {'int': 6797} |
| `chromeOtherPssKb` | {'int': 6797} |
| `chromeProcesses` | {'int': 6797} |
| `chromeProfiles` | {'int': 6797} |
| `chromeRendererMaxPssKb` | {'int': 6797} |
| `chromeRendererPssKb` | {'int': 6797} |
| `chromeRenderers` | {'int': 6797} |
| `chromeTabs` | {'int': 6797} |
| `chromeTabsProbedProfiles` | {'int': 6797} |
| `chromeUtilityPssKb` | {'int': 6797} |
| `desktopPssKb` | {'int': 6797} |
| `hostPssKb` | {'int': 6797} |
| `kind` | {'str': 6797} |
| `memAvailableKb` | {'int': 6797} |
| `memTotalKb` | {'int': 6797} |
| `otherPssKb` | {'int': 6797} |
| `processes` | {'int': 6797} |
| `pssFallbackProcesses` | {'int': 6797} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
