# sandbox_telemetry_parse — 2026-11-12 13:20:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2145835 lines=4750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4741 |
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
| `chromeBrowserPssKb` | {'int': 4741} |
| `chromeGpuPssKb` | {'int': 4741} |
| `chromeOtherPssKb` | {'int': 4741} |
| `chromeProcesses` | {'int': 4741} |
| `chromeProfiles` | {'int': 4741} |
| `chromeRendererMaxPssKb` | {'int': 4741} |
| `chromeRendererPssKb` | {'int': 4741} |
| `chromeRenderers` | {'int': 4741} |
| `chromeTabs` | {'int': 4741} |
| `chromeTabsProbedProfiles` | {'int': 4741} |
| `chromeUtilityPssKb` | {'int': 4741} |
| `desktopPssKb` | {'int': 4741} |
| `hostPssKb` | {'int': 4741} |
| `kind` | {'str': 4741} |
| `memAvailableKb` | {'int': 4741} |
| `memTotalKb` | {'int': 4741} |
| `otherPssKb` | {'int': 4741} |
| `processes` | {'int': 4741} |
| `pssFallbackProcesses` | {'int': 4741} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
