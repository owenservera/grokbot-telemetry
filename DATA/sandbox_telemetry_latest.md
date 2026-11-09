# sandbox_telemetry_parse — 2026-11-09 22:48:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=871587 lines=1934
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1925 |
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
| `chromeBrowserPssKb` | {'int': 1925} |
| `chromeGpuPssKb` | {'int': 1925} |
| `chromeOtherPssKb` | {'int': 1925} |
| `chromeProcesses` | {'int': 1925} |
| `chromeProfiles` | {'int': 1925} |
| `chromeRendererMaxPssKb` | {'int': 1925} |
| `chromeRendererPssKb` | {'int': 1925} |
| `chromeRenderers` | {'int': 1925} |
| `chromeTabs` | {'int': 1925} |
| `chromeTabsProbedProfiles` | {'int': 1925} |
| `chromeUtilityPssKb` | {'int': 1925} |
| `desktopPssKb` | {'int': 1925} |
| `hostPssKb` | {'int': 1925} |
| `kind` | {'str': 1925} |
| `memAvailableKb` | {'int': 1925} |
| `memTotalKb` | {'int': 1925} |
| `otherPssKb` | {'int': 1925} |
| `processes` | {'int': 1925} |
| `pssFallbackProcesses` | {'int': 1925} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
