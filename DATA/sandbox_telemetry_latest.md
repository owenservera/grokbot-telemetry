# sandbox_telemetry_parse — 2026-11-18 18:21:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=925467 lines=2054
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2045 |
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
| `chromeBrowserPssKb` | {'int': 2045} |
| `chromeGpuPssKb` | {'int': 2045} |
| `chromeOtherPssKb` | {'int': 2045} |
| `chromeProcesses` | {'int': 2045} |
| `chromeProfiles` | {'int': 2045} |
| `chromeRendererMaxPssKb` | {'int': 2045} |
| `chromeRendererPssKb` | {'int': 2045} |
| `chromeRenderers` | {'int': 2045} |
| `chromeTabs` | {'int': 2045} |
| `chromeTabsProbedProfiles` | {'int': 2045} |
| `chromeUtilityPssKb` | {'int': 2045} |
| `desktopPssKb` | {'int': 2045} |
| `hostPssKb` | {'int': 2045} |
| `kind` | {'str': 2045} |
| `memAvailableKb` | {'int': 2045} |
| `memTotalKb` | {'int': 2045} |
| `otherPssKb` | {'int': 2045} |
| `processes` | {'int': 2045} |
| `pssFallbackProcesses` | {'int': 2045} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
