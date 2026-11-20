# sandbox_telemetry_parse — 2026-11-20 18:38:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1838513 lines=4076
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4063 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4063} |
| `chromeGpuPssKb` | {'int': 4063} |
| `chromeOtherPssKb` | {'int': 4063} |
| `chromeProcesses` | {'int': 4063} |
| `chromeProfiles` | {'int': 4063} |
| `chromeRendererMaxPssKb` | {'int': 4063} |
| `chromeRendererPssKb` | {'int': 4063} |
| `chromeRenderers` | {'int': 4063} |
| `chromeTabs` | {'int': 4063} |
| `chromeTabsProbedProfiles` | {'int': 4063} |
| `chromeUtilityPssKb` | {'int': 4063} |
| `desktopPssKb` | {'int': 4063} |
| `hostPssKb` | {'int': 4063} |
| `kind` | {'str': 4063} |
| `memAvailableKb` | {'int': 4063} |
| `memTotalKb` | {'int': 4063} |
| `otherPssKb` | {'int': 4063} |
| `processes` | {'int': 4063} |
| `pssFallbackProcesses` | {'int': 4063} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
