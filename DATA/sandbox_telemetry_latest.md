# sandbox_telemetry_parse — 2026-11-26 07:37:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3143232 lines=6962
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6947 |
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
| `chromeBrowserPssKb` | {'int': 6947} |
| `chromeGpuPssKb` | {'int': 6947} |
| `chromeOtherPssKb` | {'int': 6947} |
| `chromeProcesses` | {'int': 6947} |
| `chromeProfiles` | {'int': 6947} |
| `chromeRendererMaxPssKb` | {'int': 6947} |
| `chromeRendererPssKb` | {'int': 6947} |
| `chromeRenderers` | {'int': 6947} |
| `chromeTabs` | {'int': 6947} |
| `chromeTabsProbedProfiles` | {'int': 6947} |
| `chromeUtilityPssKb` | {'int': 6947} |
| `desktopPssKb` | {'int': 6947} |
| `hostPssKb` | {'int': 6947} |
| `kind` | {'str': 6947} |
| `memAvailableKb` | {'int': 6947} |
| `memTotalKb` | {'int': 6947} |
| `otherPssKb` | {'int': 6947} |
| `processes` | {'int': 6947} |
| `pssFallbackProcesses` | {'int': 6947} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
