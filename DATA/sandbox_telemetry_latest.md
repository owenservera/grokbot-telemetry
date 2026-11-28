# sandbox_telemetry_parse — 2026-11-28 13:04:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=897780 lines=1991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1983 |
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
| `chromeBrowserPssKb` | {'int': 1983} |
| `chromeGpuPssKb` | {'int': 1983} |
| `chromeOtherPssKb` | {'int': 1983} |
| `chromeProcesses` | {'int': 1983} |
| `chromeProfiles` | {'int': 1983} |
| `chromeRendererMaxPssKb` | {'int': 1983} |
| `chromeRendererPssKb` | {'int': 1983} |
| `chromeRenderers` | {'int': 1983} |
| `chromeTabs` | {'int': 1983} |
| `chromeTabsProbedProfiles` | {'int': 1983} |
| `chromeUtilityPssKb` | {'int': 1983} |
| `desktopPssKb` | {'int': 1983} |
| `hostPssKb` | {'int': 1983} |
| `kind` | {'str': 1983} |
| `memAvailableKb` | {'int': 1983} |
| `memTotalKb` | {'int': 1983} |
| `otherPssKb` | {'int': 1983} |
| `processes` | {'int': 1983} |
| `pssFallbackProcesses` | {'int': 1983} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
