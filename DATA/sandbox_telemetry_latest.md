# sandbox_telemetry_parse — 2026-11-07 12:47:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=467491 lines=1041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1032 |
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
| `chromeBrowserPssKb` | {'int': 1032} |
| `chromeGpuPssKb` | {'int': 1032} |
| `chromeOtherPssKb` | {'int': 1032} |
| `chromeProcesses` | {'int': 1032} |
| `chromeProfiles` | {'int': 1032} |
| `chromeRendererMaxPssKb` | {'int': 1032} |
| `chromeRendererPssKb` | {'int': 1032} |
| `chromeRenderers` | {'int': 1032} |
| `chromeTabs` | {'int': 1032} |
| `chromeTabsProbedProfiles` | {'int': 1032} |
| `chromeUtilityPssKb` | {'int': 1032} |
| `desktopPssKb` | {'int': 1032} |
| `hostPssKb` | {'int': 1032} |
| `kind` | {'str': 1032} |
| `memAvailableKb` | {'int': 1032} |
| `memTotalKb` | {'int': 1032} |
| `otherPssKb` | {'int': 1032} |
| `processes` | {'int': 1032} |
| `pssFallbackProcesses` | {'int': 1032} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
