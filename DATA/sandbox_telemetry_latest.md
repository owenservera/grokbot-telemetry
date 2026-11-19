# sandbox_telemetry_parse — 2026-11-19 16:53:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1359831 lines=3016
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3005 |
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
| `chromeBrowserPssKb` | {'int': 3005} |
| `chromeGpuPssKb` | {'int': 3005} |
| `chromeOtherPssKb` | {'int': 3005} |
| `chromeProcesses` | {'int': 3005} |
| `chromeProfiles` | {'int': 3005} |
| `chromeRendererMaxPssKb` | {'int': 3005} |
| `chromeRendererPssKb` | {'int': 3005} |
| `chromeRenderers` | {'int': 3005} |
| `chromeTabs` | {'int': 3005} |
| `chromeTabsProbedProfiles` | {'int': 3005} |
| `chromeUtilityPssKb` | {'int': 3005} |
| `desktopPssKb` | {'int': 3005} |
| `hostPssKb` | {'int': 3005} |
| `kind` | {'str': 3005} |
| `memAvailableKb` | {'int': 3005} |
| `memTotalKb` | {'int': 3005} |
| `otherPssKb` | {'int': 3005} |
| `processes` | {'int': 3005} |
| `pssFallbackProcesses` | {'int': 3005} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
