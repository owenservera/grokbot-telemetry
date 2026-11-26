# sandbox_telemetry_parse — 2026-11-26 11:01:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3222877 lines=7138
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7123 |
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
| `chromeBrowserPssKb` | {'int': 7123} |
| `chromeGpuPssKb` | {'int': 7123} |
| `chromeOtherPssKb` | {'int': 7123} |
| `chromeProcesses` | {'int': 7123} |
| `chromeProfiles` | {'int': 7123} |
| `chromeRendererMaxPssKb` | {'int': 7123} |
| `chromeRendererPssKb` | {'int': 7123} |
| `chromeRenderers` | {'int': 7123} |
| `chromeTabs` | {'int': 7123} |
| `chromeTabsProbedProfiles` | {'int': 7123} |
| `chromeUtilityPssKb` | {'int': 7123} |
| `desktopPssKb` | {'int': 7123} |
| `hostPssKb` | {'int': 7123} |
| `kind` | {'str': 7123} |
| `memAvailableKb` | {'int': 7123} |
| `memTotalKb` | {'int': 7123} |
| `otherPssKb` | {'int': 7123} |
| `processes` | {'int': 7123} |
| `pssFallbackProcesses` | {'int': 7123} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
