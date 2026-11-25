# sandbox_telemetry_parse — 2026-11-25 17:56:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2860536 lines=6337
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6322 |
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
| `chromeBrowserPssKb` | {'int': 6322} |
| `chromeGpuPssKb` | {'int': 6322} |
| `chromeOtherPssKb` | {'int': 6322} |
| `chromeProcesses` | {'int': 6322} |
| `chromeProfiles` | {'int': 6322} |
| `chromeRendererMaxPssKb` | {'int': 6322} |
| `chromeRendererPssKb` | {'int': 6322} |
| `chromeRenderers` | {'int': 6322} |
| `chromeTabs` | {'int': 6322} |
| `chromeTabsProbedProfiles` | {'int': 6322} |
| `chromeUtilityPssKb` | {'int': 6322} |
| `desktopPssKb` | {'int': 6322} |
| `hostPssKb` | {'int': 6322} |
| `kind` | {'str': 6322} |
| `memAvailableKb` | {'int': 6322} |
| `memTotalKb` | {'int': 6322} |
| `otherPssKb` | {'int': 6322} |
| `processes` | {'int': 6322} |
| `pssFallbackProcesses` | {'int': 6322} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
