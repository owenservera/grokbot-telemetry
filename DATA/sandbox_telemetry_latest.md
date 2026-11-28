# sandbox_telemetry_parse — 2026-11-28 05:32:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=752573 lines=1670
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1662 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1662} |
| `chromeGpuPssKb` | {'int': 1662} |
| `chromeOtherPssKb` | {'int': 1662} |
| `chromeProcesses` | {'int': 1662} |
| `chromeProfiles` | {'int': 1662} |
| `chromeRendererMaxPssKb` | {'int': 1662} |
| `chromeRendererPssKb` | {'int': 1662} |
| `chromeRenderers` | {'int': 1662} |
| `chromeTabs` | {'int': 1662} |
| `chromeTabsProbedProfiles` | {'int': 1662} |
| `chromeUtilityPssKb` | {'int': 1662} |
| `desktopPssKb` | {'int': 1662} |
| `hostPssKb` | {'int': 1662} |
| `kind` | {'str': 1662} |
| `memAvailableKb` | {'int': 1662} |
| `memTotalKb` | {'int': 1662} |
| `otherPssKb` | {'int': 1662} |
| `processes` | {'int': 1662} |
| `pssFallbackProcesses` | {'int': 1662} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
