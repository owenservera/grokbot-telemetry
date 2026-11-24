# sandbox_telemetry_parse — 2026-11-24 12:51:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2291026 lines=5078
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5063 |
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
| `chromeBrowserPssKb` | {'int': 5063} |
| `chromeGpuPssKb` | {'int': 5063} |
| `chromeOtherPssKb` | {'int': 5063} |
| `chromeProcesses` | {'int': 5063} |
| `chromeProfiles` | {'int': 5063} |
| `chromeRendererMaxPssKb` | {'int': 5063} |
| `chromeRendererPssKb` | {'int': 5063} |
| `chromeRenderers` | {'int': 5063} |
| `chromeTabs` | {'int': 5063} |
| `chromeTabsProbedProfiles` | {'int': 5063} |
| `chromeUtilityPssKb` | {'int': 5063} |
| `desktopPssKb` | {'int': 5063} |
| `hostPssKb` | {'int': 5063} |
| `kind` | {'str': 5063} |
| `memAvailableKb` | {'int': 5063} |
| `memTotalKb` | {'int': 5063} |
| `otherPssKb` | {'int': 5063} |
| `processes` | {'int': 5063} |
| `pssFallbackProcesses` | {'int': 5063} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
