# sandbox_telemetry_parse — 2026-11-26 02:54:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3040072 lines=6734
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6719 |
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
| `chromeBrowserPssKb` | {'int': 6719} |
| `chromeGpuPssKb` | {'int': 6719} |
| `chromeOtherPssKb` | {'int': 6719} |
| `chromeProcesses` | {'int': 6719} |
| `chromeProfiles` | {'int': 6719} |
| `chromeRendererMaxPssKb` | {'int': 6719} |
| `chromeRendererPssKb` | {'int': 6719} |
| `chromeRenderers` | {'int': 6719} |
| `chromeTabs` | {'int': 6719} |
| `chromeTabsProbedProfiles` | {'int': 6719} |
| `chromeUtilityPssKb` | {'int': 6719} |
| `desktopPssKb` | {'int': 6719} |
| `hostPssKb` | {'int': 6719} |
| `kind` | {'str': 6719} |
| `memAvailableKb` | {'int': 6719} |
| `memTotalKb` | {'int': 6719} |
| `otherPssKb` | {'int': 6719} |
| `processes` | {'int': 6719} |
| `pssFallbackProcesses` | {'int': 6719} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
