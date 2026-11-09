# sandbox_telemetry_parse — 2026-11-09 10:38:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=616326 lines=1370
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1361 |
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
| `chromeBrowserPssKb` | {'int': 1361} |
| `chromeGpuPssKb` | {'int': 1361} |
| `chromeOtherPssKb` | {'int': 1361} |
| `chromeProcesses` | {'int': 1361} |
| `chromeProfiles` | {'int': 1361} |
| `chromeRendererMaxPssKb` | {'int': 1361} |
| `chromeRendererPssKb` | {'int': 1361} |
| `chromeRenderers` | {'int': 1361} |
| `chromeTabs` | {'int': 1361} |
| `chromeTabsProbedProfiles` | {'int': 1361} |
| `chromeUtilityPssKb` | {'int': 1361} |
| `desktopPssKb` | {'int': 1361} |
| `hostPssKb` | {'int': 1361} |
| `kind` | {'str': 1361} |
| `memAvailableKb` | {'int': 1361} |
| `memTotalKb` | {'int': 1361} |
| `otherPssKb` | {'int': 1361} |
| `processes` | {'int': 1361} |
| `pssFallbackProcesses` | {'int': 1361} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
