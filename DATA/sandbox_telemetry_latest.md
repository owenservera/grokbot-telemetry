# sandbox_telemetry_parse — 2026-11-06 17:34:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=87101 lines=200
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 191 |
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
| `chromeBrowserPssKb` | {'int': 191} |
| `chromeGpuPssKb` | {'int': 191} |
| `chromeOtherPssKb` | {'int': 191} |
| `chromeProcesses` | {'int': 191} |
| `chromeProfiles` | {'int': 191} |
| `chromeRendererMaxPssKb` | {'int': 191} |
| `chromeRendererPssKb` | {'int': 191} |
| `chromeRenderers` | {'int': 191} |
| `chromeTabs` | {'int': 191} |
| `chromeTabsProbedProfiles` | {'int': 191} |
| `chromeUtilityPssKb` | {'int': 191} |
| `desktopPssKb` | {'int': 191} |
| `hostPssKb` | {'int': 191} |
| `kind` | {'str': 191} |
| `memAvailableKb` | {'int': 191} |
| `memTotalKb` | {'int': 191} |
| `otherPssKb` | {'int': 191} |
| `processes` | {'int': 191} |
| `pssFallbackProcesses` | {'int': 191} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
