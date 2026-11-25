# sandbox_telemetry_parse — 2026-11-25 01:26:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2534942 lines=5617
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5602 |
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
| `chromeBrowserPssKb` | {'int': 5602} |
| `chromeGpuPssKb` | {'int': 5602} |
| `chromeOtherPssKb` | {'int': 5602} |
| `chromeProcesses` | {'int': 5602} |
| `chromeProfiles` | {'int': 5602} |
| `chromeRendererMaxPssKb` | {'int': 5602} |
| `chromeRendererPssKb` | {'int': 5602} |
| `chromeRenderers` | {'int': 5602} |
| `chromeTabs` | {'int': 5602} |
| `chromeTabsProbedProfiles` | {'int': 5602} |
| `chromeUtilityPssKb` | {'int': 5602} |
| `desktopPssKb` | {'int': 5602} |
| `hostPssKb` | {'int': 5602} |
| `kind` | {'str': 5602} |
| `memAvailableKb` | {'int': 5602} |
| `memTotalKb` | {'int': 5602} |
| `otherPssKb` | {'int': 5602} |
| `processes` | {'int': 5602} |
| `pssFallbackProcesses` | {'int': 5602} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
