# sandbox_telemetry_parse — 2026-11-24 22:05:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2469829 lines=5473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5458 |
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
| `chromeBrowserPssKb` | {'int': 5458} |
| `chromeGpuPssKb` | {'int': 5458} |
| `chromeOtherPssKb` | {'int': 5458} |
| `chromeProcesses` | {'int': 5458} |
| `chromeProfiles` | {'int': 5458} |
| `chromeRendererMaxPssKb` | {'int': 5458} |
| `chromeRendererPssKb` | {'int': 5458} |
| `chromeRenderers` | {'int': 5458} |
| `chromeTabs` | {'int': 5458} |
| `chromeTabsProbedProfiles` | {'int': 5458} |
| `chromeUtilityPssKb` | {'int': 5458} |
| `desktopPssKb` | {'int': 5458} |
| `hostPssKb` | {'int': 5458} |
| `kind` | {'str': 5458} |
| `memAvailableKb` | {'int': 5458} |
| `memTotalKb` | {'int': 5458} |
| `otherPssKb` | {'int': 5458} |
| `processes` | {'int': 5458} |
| `pssFallbackProcesses` | {'int': 5458} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
