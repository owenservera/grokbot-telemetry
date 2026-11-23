# sandbox_telemetry_parse — 2026-11-23 21:52:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2001595 lines=4438
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4423 |
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
| `chromeBrowserPssKb` | {'int': 4423} |
| `chromeGpuPssKb` | {'int': 4423} |
| `chromeOtherPssKb` | {'int': 4423} |
| `chromeProcesses` | {'int': 4423} |
| `chromeProfiles` | {'int': 4423} |
| `chromeRendererMaxPssKb` | {'int': 4423} |
| `chromeRendererPssKb` | {'int': 4423} |
| `chromeRenderers` | {'int': 4423} |
| `chromeTabs` | {'int': 4423} |
| `chromeTabsProbedProfiles` | {'int': 4423} |
| `chromeUtilityPssKb` | {'int': 4423} |
| `desktopPssKb` | {'int': 4423} |
| `hostPssKb` | {'int': 4423} |
| `kind` | {'str': 4423} |
| `memAvailableKb` | {'int': 4423} |
| `memTotalKb` | {'int': 4423} |
| `otherPssKb` | {'int': 4423} |
| `processes` | {'int': 4423} |
| `pssFallbackProcesses` | {'int': 4423} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
