# sandbox_telemetry_parse — 2026-11-24 22:27:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2476615 lines=5488
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5473 |
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
| `chromeBrowserPssKb` | {'int': 5473} |
| `chromeGpuPssKb` | {'int': 5473} |
| `chromeOtherPssKb` | {'int': 5473} |
| `chromeProcesses` | {'int': 5473} |
| `chromeProfiles` | {'int': 5473} |
| `chromeRendererMaxPssKb` | {'int': 5473} |
| `chromeRendererPssKb` | {'int': 5473} |
| `chromeRenderers` | {'int': 5473} |
| `chromeTabs` | {'int': 5473} |
| `chromeTabsProbedProfiles` | {'int': 5473} |
| `chromeUtilityPssKb` | {'int': 5473} |
| `desktopPssKb` | {'int': 5473} |
| `hostPssKb` | {'int': 5473} |
| `kind` | {'str': 5473} |
| `memAvailableKb` | {'int': 5473} |
| `memTotalKb` | {'int': 5473} |
| `otherPssKb` | {'int': 5473} |
| `processes` | {'int': 5473} |
| `pssFallbackProcesses` | {'int': 5473} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
