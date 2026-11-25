# sandbox_telemetry_parse — 2026-11-25 02:38:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2556642 lines=5665
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5650 |
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
| `chromeBrowserPssKb` | {'int': 5650} |
| `chromeGpuPssKb` | {'int': 5650} |
| `chromeOtherPssKb` | {'int': 5650} |
| `chromeProcesses` | {'int': 5650} |
| `chromeProfiles` | {'int': 5650} |
| `chromeRendererMaxPssKb` | {'int': 5650} |
| `chromeRendererPssKb` | {'int': 5650} |
| `chromeRenderers` | {'int': 5650} |
| `chromeTabs` | {'int': 5650} |
| `chromeTabsProbedProfiles` | {'int': 5650} |
| `chromeUtilityPssKb` | {'int': 5650} |
| `desktopPssKb` | {'int': 5650} |
| `hostPssKb` | {'int': 5650} |
| `kind` | {'str': 5650} |
| `memAvailableKb` | {'int': 5650} |
| `memTotalKb` | {'int': 5650} |
| `otherPssKb` | {'int': 5650} |
| `processes` | {'int': 5650} |
| `pssFallbackProcesses` | {'int': 5650} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
