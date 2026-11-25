# sandbox_telemetry_parse — 2026-11-25 21:19:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2927009 lines=6484
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6469 |
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
| `chromeBrowserPssKb` | {'int': 6469} |
| `chromeGpuPssKb` | {'int': 6469} |
| `chromeOtherPssKb` | {'int': 6469} |
| `chromeProcesses` | {'int': 6469} |
| `chromeProfiles` | {'int': 6469} |
| `chromeRendererMaxPssKb` | {'int': 6469} |
| `chromeRendererPssKb` | {'int': 6469} |
| `chromeRenderers` | {'int': 6469} |
| `chromeTabs` | {'int': 6469} |
| `chromeTabsProbedProfiles` | {'int': 6469} |
| `chromeUtilityPssKb` | {'int': 6469} |
| `desktopPssKb` | {'int': 6469} |
| `hostPssKb` | {'int': 6469} |
| `kind` | {'str': 6469} |
| `memAvailableKb` | {'int': 6469} |
| `memTotalKb` | {'int': 6469} |
| `otherPssKb` | {'int': 6469} |
| `processes` | {'int': 6469} |
| `pssFallbackProcesses` | {'int': 6469} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
