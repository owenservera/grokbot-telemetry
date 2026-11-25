# sandbox_telemetry_parse — 2026-11-25 15:38:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2815767 lines=6238
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6223 |
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
| `chromeBrowserPssKb` | {'int': 6223} |
| `chromeGpuPssKb` | {'int': 6223} |
| `chromeOtherPssKb` | {'int': 6223} |
| `chromeProcesses` | {'int': 6223} |
| `chromeProfiles` | {'int': 6223} |
| `chromeRendererMaxPssKb` | {'int': 6223} |
| `chromeRendererPssKb` | {'int': 6223} |
| `chromeRenderers` | {'int': 6223} |
| `chromeTabs` | {'int': 6223} |
| `chromeTabsProbedProfiles` | {'int': 6223} |
| `chromeUtilityPssKb` | {'int': 6223} |
| `desktopPssKb` | {'int': 6223} |
| `hostPssKb` | {'int': 6223} |
| `kind` | {'str': 6223} |
| `memAvailableKb` | {'int': 6223} |
| `memTotalKb` | {'int': 6223} |
| `otherPssKb` | {'int': 6223} |
| `processes` | {'int': 6223} |
| `pssFallbackProcesses` | {'int': 6223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
