# sandbox_telemetry_parse — 2026-11-18 19:12:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=941295 lines=2089
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2080 |
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
| `chromeBrowserPssKb` | {'int': 2080} |
| `chromeGpuPssKb` | {'int': 2080} |
| `chromeOtherPssKb` | {'int': 2080} |
| `chromeProcesses` | {'int': 2080} |
| `chromeProfiles` | {'int': 2080} |
| `chromeRendererMaxPssKb` | {'int': 2080} |
| `chromeRendererPssKb` | {'int': 2080} |
| `chromeRenderers` | {'int': 2080} |
| `chromeTabs` | {'int': 2080} |
| `chromeTabsProbedProfiles` | {'int': 2080} |
| `chromeUtilityPssKb` | {'int': 2080} |
| `desktopPssKb` | {'int': 2080} |
| `hostPssKb` | {'int': 2080} |
| `kind` | {'str': 2080} |
| `memAvailableKb` | {'int': 2080} |
| `memTotalKb` | {'int': 2080} |
| `otherPssKb` | {'int': 2080} |
| `processes` | {'int': 2080} |
| `pssFallbackProcesses` | {'int': 2080} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
