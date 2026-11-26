# sandbox_telemetry_parse — 2026-11-26 09:49:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3195721 lines=7078
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7063 |
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
| `chromeBrowserPssKb` | {'int': 7063} |
| `chromeGpuPssKb` | {'int': 7063} |
| `chromeOtherPssKb` | {'int': 7063} |
| `chromeProcesses` | {'int': 7063} |
| `chromeProfiles` | {'int': 7063} |
| `chromeRendererMaxPssKb` | {'int': 7063} |
| `chromeRendererPssKb` | {'int': 7063} |
| `chromeRenderers` | {'int': 7063} |
| `chromeTabs` | {'int': 7063} |
| `chromeTabsProbedProfiles` | {'int': 7063} |
| `chromeUtilityPssKb` | {'int': 7063} |
| `desktopPssKb` | {'int': 7063} |
| `hostPssKb` | {'int': 7063} |
| `kind` | {'str': 7063} |
| `memAvailableKb` | {'int': 7063} |
| `memTotalKb` | {'int': 7063} |
| `otherPssKb` | {'int': 7063} |
| `processes` | {'int': 7063} |
| `pssFallbackProcesses` | {'int': 7063} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
