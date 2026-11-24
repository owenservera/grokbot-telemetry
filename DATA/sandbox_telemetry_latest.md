# sandbox_telemetry_parse — 2026-11-24 21:44:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2463499 lines=5459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5444 |
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
| `chromeBrowserPssKb` | {'int': 5444} |
| `chromeGpuPssKb` | {'int': 5444} |
| `chromeOtherPssKb` | {'int': 5444} |
| `chromeProcesses` | {'int': 5444} |
| `chromeProfiles` | {'int': 5444} |
| `chromeRendererMaxPssKb` | {'int': 5444} |
| `chromeRendererPssKb` | {'int': 5444} |
| `chromeRenderers` | {'int': 5444} |
| `chromeTabs` | {'int': 5444} |
| `chromeTabsProbedProfiles` | {'int': 5444} |
| `chromeUtilityPssKb` | {'int': 5444} |
| `desktopPssKb` | {'int': 5444} |
| `hostPssKb` | {'int': 5444} |
| `kind` | {'str': 5444} |
| `memAvailableKb` | {'int': 5444} |
| `memTotalKb` | {'int': 5444} |
| `otherPssKb` | {'int': 5444} |
| `processes` | {'int': 5444} |
| `pssFallbackProcesses` | {'int': 5444} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
