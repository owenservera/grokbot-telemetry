# sandbox_telemetry_parse — 2026-11-25 17:43:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2856468 lines=6328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6313 |
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
| `chromeBrowserPssKb` | {'int': 6313} |
| `chromeGpuPssKb` | {'int': 6313} |
| `chromeOtherPssKb` | {'int': 6313} |
| `chromeProcesses` | {'int': 6313} |
| `chromeProfiles` | {'int': 6313} |
| `chromeRendererMaxPssKb` | {'int': 6313} |
| `chromeRendererPssKb` | {'int': 6313} |
| `chromeRenderers` | {'int': 6313} |
| `chromeTabs` | {'int': 6313} |
| `chromeTabsProbedProfiles` | {'int': 6313} |
| `chromeUtilityPssKb` | {'int': 6313} |
| `desktopPssKb` | {'int': 6313} |
| `hostPssKb` | {'int': 6313} |
| `kind` | {'str': 6313} |
| `memAvailableKb` | {'int': 6313} |
| `memTotalKb` | {'int': 6313} |
| `otherPssKb` | {'int': 6313} |
| `processes` | {'int': 6313} |
| `pssFallbackProcesses` | {'int': 6313} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
