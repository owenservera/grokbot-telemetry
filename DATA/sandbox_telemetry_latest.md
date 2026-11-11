# sandbox_telemetry_parse — 2026-11-11 19:37:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1786522 lines=3956
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3947 |
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
| `chromeBrowserPssKb` | {'int': 3947} |
| `chromeGpuPssKb` | {'int': 3947} |
| `chromeOtherPssKb` | {'int': 3947} |
| `chromeProcesses` | {'int': 3947} |
| `chromeProfiles` | {'int': 3947} |
| `chromeRendererMaxPssKb` | {'int': 3947} |
| `chromeRendererPssKb` | {'int': 3947} |
| `chromeRenderers` | {'int': 3947} |
| `chromeTabs` | {'int': 3947} |
| `chromeTabsProbedProfiles` | {'int': 3947} |
| `chromeUtilityPssKb` | {'int': 3947} |
| `desktopPssKb` | {'int': 3947} |
| `hostPssKb` | {'int': 3947} |
| `kind` | {'str': 3947} |
| `memAvailableKb` | {'int': 3947} |
| `memTotalKb` | {'int': 3947} |
| `otherPssKb` | {'int': 3947} |
| `processes` | {'int': 3947} |
| `pssFallbackProcesses` | {'int': 3947} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
