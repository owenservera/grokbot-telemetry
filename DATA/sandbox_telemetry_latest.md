# sandbox_telemetry_parse — 2026-11-25 18:38:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2872740 lines=6364
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6349 |
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
| `chromeBrowserPssKb` | {'int': 6349} |
| `chromeGpuPssKb` | {'int': 6349} |
| `chromeOtherPssKb` | {'int': 6349} |
| `chromeProcesses` | {'int': 6349} |
| `chromeProfiles` | {'int': 6349} |
| `chromeRendererMaxPssKb` | {'int': 6349} |
| `chromeRendererPssKb` | {'int': 6349} |
| `chromeRenderers` | {'int': 6349} |
| `chromeTabs` | {'int': 6349} |
| `chromeTabsProbedProfiles` | {'int': 6349} |
| `chromeUtilityPssKb` | {'int': 6349} |
| `desktopPssKb` | {'int': 6349} |
| `hostPssKb` | {'int': 6349} |
| `kind` | {'str': 6349} |
| `memAvailableKb` | {'int': 6349} |
| `memTotalKb` | {'int': 6349} |
| `otherPssKb` | {'int': 6349} |
| `processes` | {'int': 6349} |
| `pssFallbackProcesses` | {'int': 6349} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
