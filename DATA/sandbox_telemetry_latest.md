# sandbox_telemetry_parse — 2026-11-07 13:27:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=481511 lines=1072
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1063 |
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
| `chromeBrowserPssKb` | {'int': 1063} |
| `chromeGpuPssKb` | {'int': 1063} |
| `chromeOtherPssKb` | {'int': 1063} |
| `chromeProcesses` | {'int': 1063} |
| `chromeProfiles` | {'int': 1063} |
| `chromeRendererMaxPssKb` | {'int': 1063} |
| `chromeRendererPssKb` | {'int': 1063} |
| `chromeRenderers` | {'int': 1063} |
| `chromeTabs` | {'int': 1063} |
| `chromeTabsProbedProfiles` | {'int': 1063} |
| `chromeUtilityPssKb` | {'int': 1063} |
| `desktopPssKb` | {'int': 1063} |
| `hostPssKb` | {'int': 1063} |
| `kind` | {'str': 1063} |
| `memAvailableKb` | {'int': 1063} |
| `memTotalKb` | {'int': 1063} |
| `otherPssKb` | {'int': 1063} |
| `processes` | {'int': 1063} |
| `pssFallbackProcesses` | {'int': 1063} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
