# sandbox_telemetry_parse — 2026-11-09 09:57:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=601856 lines=1338
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1329 |
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
| `chromeBrowserPssKb` | {'int': 1329} |
| `chromeGpuPssKb` | {'int': 1329} |
| `chromeOtherPssKb` | {'int': 1329} |
| `chromeProcesses` | {'int': 1329} |
| `chromeProfiles` | {'int': 1329} |
| `chromeRendererMaxPssKb` | {'int': 1329} |
| `chromeRendererPssKb` | {'int': 1329} |
| `chromeRenderers` | {'int': 1329} |
| `chromeTabs` | {'int': 1329} |
| `chromeTabsProbedProfiles` | {'int': 1329} |
| `chromeUtilityPssKb` | {'int': 1329} |
| `desktopPssKb` | {'int': 1329} |
| `hostPssKb` | {'int': 1329} |
| `kind` | {'str': 1329} |
| `memAvailableKb` | {'int': 1329} |
| `memTotalKb` | {'int': 1329} |
| `otherPssKb` | {'int': 1329} |
| `processes` | {'int': 1329} |
| `pssFallbackProcesses` | {'int': 1329} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
