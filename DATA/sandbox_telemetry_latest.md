# sandbox_telemetry_parse — 2026-11-19 11:03:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1241568 lines=2753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2744 |
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
| `chromeBrowserPssKb` | {'int': 2744} |
| `chromeGpuPssKb` | {'int': 2744} |
| `chromeOtherPssKb` | {'int': 2744} |
| `chromeProcesses` | {'int': 2744} |
| `chromeProfiles` | {'int': 2744} |
| `chromeRendererMaxPssKb` | {'int': 2744} |
| `chromeRendererPssKb` | {'int': 2744} |
| `chromeRenderers` | {'int': 2744} |
| `chromeTabs` | {'int': 2744} |
| `chromeTabsProbedProfiles` | {'int': 2744} |
| `chromeUtilityPssKb` | {'int': 2744} |
| `desktopPssKb` | {'int': 2744} |
| `hostPssKb` | {'int': 2744} |
| `kind` | {'str': 2744} |
| `memAvailableKb` | {'int': 2744} |
| `memTotalKb` | {'int': 2744} |
| `otherPssKb` | {'int': 2744} |
| `processes` | {'int': 2744} |
| `pssFallbackProcesses` | {'int': 2744} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
