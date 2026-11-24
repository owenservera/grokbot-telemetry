# sandbox_telemetry_parse — 2026-11-24 10:07:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2238128 lines=4961
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4946 |
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
| `chromeBrowserPssKb` | {'int': 4946} |
| `chromeGpuPssKb` | {'int': 4946} |
| `chromeOtherPssKb` | {'int': 4946} |
| `chromeProcesses` | {'int': 4946} |
| `chromeProfiles` | {'int': 4946} |
| `chromeRendererMaxPssKb` | {'int': 4946} |
| `chromeRendererPssKb` | {'int': 4946} |
| `chromeRenderers` | {'int': 4946} |
| `chromeTabs` | {'int': 4946} |
| `chromeTabsProbedProfiles` | {'int': 4946} |
| `chromeUtilityPssKb` | {'int': 4946} |
| `desktopPssKb` | {'int': 4946} |
| `hostPssKb` | {'int': 4946} |
| `kind` | {'str': 4946} |
| `memAvailableKb` | {'int': 4946} |
| `memTotalKb` | {'int': 4946} |
| `otherPssKb` | {'int': 4946} |
| `processes` | {'int': 4946} |
| `pssFallbackProcesses` | {'int': 4946} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
