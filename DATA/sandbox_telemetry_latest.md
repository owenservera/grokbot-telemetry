# sandbox_telemetry_parse — 2026-11-24 07:01:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2177989 lines=4828
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4813 |
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
| `chromeBrowserPssKb` | {'int': 4813} |
| `chromeGpuPssKb` | {'int': 4813} |
| `chromeOtherPssKb` | {'int': 4813} |
| `chromeProcesses` | {'int': 4813} |
| `chromeProfiles` | {'int': 4813} |
| `chromeRendererMaxPssKb` | {'int': 4813} |
| `chromeRendererPssKb` | {'int': 4813} |
| `chromeRenderers` | {'int': 4813} |
| `chromeTabs` | {'int': 4813} |
| `chromeTabsProbedProfiles` | {'int': 4813} |
| `chromeUtilityPssKb` | {'int': 4813} |
| `desktopPssKb` | {'int': 4813} |
| `hostPssKb` | {'int': 4813} |
| `kind` | {'str': 4813} |
| `memAvailableKb` | {'int': 4813} |
| `memTotalKb` | {'int': 4813} |
| `otherPssKb` | {'int': 4813} |
| `processes` | {'int': 4813} |
| `pssFallbackProcesses` | {'int': 4813} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
