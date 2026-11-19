# sandbox_telemetry_parse — 2026-11-19 22:48:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1472510 lines=3265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3254 |
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
| `chromeBrowserPssKb` | {'int': 3254} |
| `chromeGpuPssKb` | {'int': 3254} |
| `chromeOtherPssKb` | {'int': 3254} |
| `chromeProcesses` | {'int': 3254} |
| `chromeProfiles` | {'int': 3254} |
| `chromeRendererMaxPssKb` | {'int': 3254} |
| `chromeRendererPssKb` | {'int': 3254} |
| `chromeRenderers` | {'int': 3254} |
| `chromeTabs` | {'int': 3254} |
| `chromeTabsProbedProfiles` | {'int': 3254} |
| `chromeUtilityPssKb` | {'int': 3254} |
| `desktopPssKb` | {'int': 3254} |
| `hostPssKb` | {'int': 3254} |
| `kind` | {'str': 3254} |
| `memAvailableKb` | {'int': 3254} |
| `memTotalKb` | {'int': 3254} |
| `otherPssKb` | {'int': 3254} |
| `processes` | {'int': 3254} |
| `pssFallbackProcesses` | {'int': 3254} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
