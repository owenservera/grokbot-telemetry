# sandbox_telemetry_parse — 2026-11-07 05:21:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=325937 lines=728
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 719 |
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
| `chromeBrowserPssKb` | {'int': 719} |
| `chromeGpuPssKb` | {'int': 719} |
| `chromeOtherPssKb` | {'int': 719} |
| `chromeProcesses` | {'int': 719} |
| `chromeProfiles` | {'int': 719} |
| `chromeRendererMaxPssKb` | {'int': 719} |
| `chromeRendererPssKb` | {'int': 719} |
| `chromeRenderers` | {'int': 719} |
| `chromeTabs` | {'int': 719} |
| `chromeTabsProbedProfiles` | {'int': 719} |
| `chromeUtilityPssKb` | {'int': 719} |
| `desktopPssKb` | {'int': 719} |
| `hostPssKb` | {'int': 719} |
| `kind` | {'str': 719} |
| `memAvailableKb` | {'int': 719} |
| `memTotalKb` | {'int': 719} |
| `otherPssKb` | {'int': 719} |
| `processes` | {'int': 719} |
| `pssFallbackProcesses` | {'int': 719} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
