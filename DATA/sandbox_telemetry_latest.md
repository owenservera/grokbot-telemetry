# sandbox_telemetry_parse — 2026-11-12 20:02:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2304838 lines=5101
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5092 |
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
| `chromeBrowserPssKb` | {'int': 5092} |
| `chromeGpuPssKb` | {'int': 5092} |
| `chromeOtherPssKb` | {'int': 5092} |
| `chromeProcesses` | {'int': 5092} |
| `chromeProfiles` | {'int': 5092} |
| `chromeRendererMaxPssKb` | {'int': 5092} |
| `chromeRendererPssKb` | {'int': 5092} |
| `chromeRenderers` | {'int': 5092} |
| `chromeTabs` | {'int': 5092} |
| `chromeTabsProbedProfiles` | {'int': 5092} |
| `chromeUtilityPssKb` | {'int': 5092} |
| `desktopPssKb` | {'int': 5092} |
| `hostPssKb` | {'int': 5092} |
| `kind` | {'str': 5092} |
| `memAvailableKb` | {'int': 5092} |
| `memTotalKb` | {'int': 5092} |
| `otherPssKb` | {'int': 5092} |
| `processes` | {'int': 5092} |
| `pssFallbackProcesses` | {'int': 5092} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
