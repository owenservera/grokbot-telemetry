# sandbox_telemetry_parse — 2026-11-19 23:13:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1481098 lines=3284
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3273 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3273} |
| `chromeGpuPssKb` | {'int': 3273} |
| `chromeOtherPssKb` | {'int': 3273} |
| `chromeProcesses` | {'int': 3273} |
| `chromeProfiles` | {'int': 3273} |
| `chromeRendererMaxPssKb` | {'int': 3273} |
| `chromeRendererPssKb` | {'int': 3273} |
| `chromeRenderers` | {'int': 3273} |
| `chromeTabs` | {'int': 3273} |
| `chromeTabsProbedProfiles` | {'int': 3273} |
| `chromeUtilityPssKb` | {'int': 3273} |
| `desktopPssKb` | {'int': 3273} |
| `hostPssKb` | {'int': 3273} |
| `kind` | {'str': 3273} |
| `memAvailableKb` | {'int': 3273} |
| `memTotalKb` | {'int': 3273} |
| `otherPssKb` | {'int': 3273} |
| `processes` | {'int': 3273} |
| `pssFallbackProcesses` | {'int': 3273} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
