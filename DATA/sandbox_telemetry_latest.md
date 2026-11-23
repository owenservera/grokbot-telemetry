# sandbox_telemetry_parse — 2026-11-23 16:35:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1911082 lines=4238
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4223 |
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
| `chromeBrowserPssKb` | {'int': 4223} |
| `chromeGpuPssKb` | {'int': 4223} |
| `chromeOtherPssKb` | {'int': 4223} |
| `chromeProcesses` | {'int': 4223} |
| `chromeProfiles` | {'int': 4223} |
| `chromeRendererMaxPssKb` | {'int': 4223} |
| `chromeRendererPssKb` | {'int': 4223} |
| `chromeRenderers` | {'int': 4223} |
| `chromeTabs` | {'int': 4223} |
| `chromeTabsProbedProfiles` | {'int': 4223} |
| `chromeUtilityPssKb` | {'int': 4223} |
| `desktopPssKb` | {'int': 4223} |
| `hostPssKb` | {'int': 4223} |
| `kind` | {'str': 4223} |
| `memAvailableKb` | {'int': 4223} |
| `memTotalKb` | {'int': 4223} |
| `otherPssKb` | {'int': 4223} |
| `processes` | {'int': 4223} |
| `pssFallbackProcesses` | {'int': 4223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
