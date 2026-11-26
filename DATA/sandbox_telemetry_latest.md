# sandbox_telemetry_parse — 2026-11-26 08:23:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3159504 lines=6998
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6983 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6983} |
| `chromeGpuPssKb` | {'int': 6983} |
| `chromeOtherPssKb` | {'int': 6983} |
| `chromeProcesses` | {'int': 6983} |
| `chromeProfiles` | {'int': 6983} |
| `chromeRendererMaxPssKb` | {'int': 6983} |
| `chromeRendererPssKb` | {'int': 6983} |
| `chromeRenderers` | {'int': 6983} |
| `chromeTabs` | {'int': 6983} |
| `chromeTabsProbedProfiles` | {'int': 6983} |
| `chromeUtilityPssKb` | {'int': 6983} |
| `desktopPssKb` | {'int': 6983} |
| `hostPssKb` | {'int': 6983} |
| `kind` | {'str': 6983} |
| `memAvailableKb` | {'int': 6983} |
| `memTotalKb` | {'int': 6983} |
| `otherPssKb` | {'int': 6983} |
| `processes` | {'int': 6983} |
| `pssFallbackProcesses` | {'int': 6983} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
