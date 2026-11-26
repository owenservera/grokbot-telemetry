# sandbox_telemetry_parse — 2026-11-26 13:21:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3268112 lines=7238
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7223 |
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
| `chromeBrowserPssKb` | {'int': 7223} |
| `chromeGpuPssKb` | {'int': 7223} |
| `chromeOtherPssKb` | {'int': 7223} |
| `chromeProcesses` | {'int': 7223} |
| `chromeProfiles` | {'int': 7223} |
| `chromeRendererMaxPssKb` | {'int': 7223} |
| `chromeRendererPssKb` | {'int': 7223} |
| `chromeRenderers` | {'int': 7223} |
| `chromeTabs` | {'int': 7223} |
| `chromeTabsProbedProfiles` | {'int': 7223} |
| `chromeUtilityPssKb` | {'int': 7223} |
| `desktopPssKb` | {'int': 7223} |
| `hostPssKb` | {'int': 7223} |
| `kind` | {'str': 7223} |
| `memAvailableKb` | {'int': 7223} |
| `memTotalKb` | {'int': 7223} |
| `otherPssKb` | {'int': 7223} |
| `processes` | {'int': 7223} |
| `pssFallbackProcesses` | {'int': 7223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
