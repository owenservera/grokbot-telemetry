# sandbox_telemetry_parse — 2026-11-27 03:56:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=224526 lines=503
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 495 |
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
| `chromeBrowserPssKb` | {'int': 495} |
| `chromeGpuPssKb` | {'int': 495} |
| `chromeOtherPssKb` | {'int': 495} |
| `chromeProcesses` | {'int': 495} |
| `chromeProfiles` | {'int': 495} |
| `chromeRendererMaxPssKb` | {'int': 495} |
| `chromeRendererPssKb` | {'int': 495} |
| `chromeRenderers` | {'int': 495} |
| `chromeTabs` | {'int': 495} |
| `chromeTabsProbedProfiles` | {'int': 495} |
| `chromeUtilityPssKb` | {'int': 495} |
| `desktopPssKb` | {'int': 495} |
| `hostPssKb` | {'int': 495} |
| `kind` | {'str': 495} |
| `memAvailableKb` | {'int': 495} |
| `memTotalKb` | {'int': 495} |
| `otherPssKb` | {'int': 495} |
| `processes` | {'int': 495} |
| `pssFallbackProcesses` | {'int': 495} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
