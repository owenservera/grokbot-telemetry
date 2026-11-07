# sandbox_telemetry_parse — 2026-11-07 14:38:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=504135 lines=1122
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1113 |
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
| `chromeBrowserPssKb` | {'int': 1113} |
| `chromeGpuPssKb` | {'int': 1113} |
| `chromeOtherPssKb` | {'int': 1113} |
| `chromeProcesses` | {'int': 1113} |
| `chromeProfiles` | {'int': 1113} |
| `chromeRendererMaxPssKb` | {'int': 1113} |
| `chromeRendererPssKb` | {'int': 1113} |
| `chromeRenderers` | {'int': 1113} |
| `chromeTabs` | {'int': 1113} |
| `chromeTabsProbedProfiles` | {'int': 1113} |
| `chromeUtilityPssKb` | {'int': 1113} |
| `desktopPssKb` | {'int': 1113} |
| `hostPssKb` | {'int': 1113} |
| `kind` | {'str': 1113} |
| `memAvailableKb` | {'int': 1113} |
| `memTotalKb` | {'int': 1113} |
| `otherPssKb` | {'int': 1113} |
| `processes` | {'int': 1113} |
| `pssFallbackProcesses` | {'int': 1113} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
