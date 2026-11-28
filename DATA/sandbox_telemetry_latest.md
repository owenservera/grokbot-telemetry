# sandbox_telemetry_parse — 2026-11-28 01:36:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=678360 lines=1506
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1498 |
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
| `chromeBrowserPssKb` | {'int': 1498} |
| `chromeGpuPssKb` | {'int': 1498} |
| `chromeOtherPssKb` | {'int': 1498} |
| `chromeProcesses` | {'int': 1498} |
| `chromeProfiles` | {'int': 1498} |
| `chromeRendererMaxPssKb` | {'int': 1498} |
| `chromeRendererPssKb` | {'int': 1498} |
| `chromeRenderers` | {'int': 1498} |
| `chromeTabs` | {'int': 1498} |
| `chromeTabsProbedProfiles` | {'int': 1498} |
| `chromeUtilityPssKb` | {'int': 1498} |
| `desktopPssKb` | {'int': 1498} |
| `hostPssKb` | {'int': 1498} |
| `kind` | {'str': 1498} |
| `memAvailableKb` | {'int': 1498} |
| `memTotalKb` | {'int': 1498} |
| `otherPssKb` | {'int': 1498} |
| `processes` | {'int': 1498} |
| `pssFallbackProcesses` | {'int': 1498} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
