# sandbox_telemetry_parse — 2026-11-06 20:25:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=154530 lines=349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 340 |
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
| `chromeBrowserPssKb` | {'int': 340} |
| `chromeGpuPssKb` | {'int': 340} |
| `chromeOtherPssKb` | {'int': 340} |
| `chromeProcesses` | {'int': 340} |
| `chromeProfiles` | {'int': 340} |
| `chromeRendererMaxPssKb` | {'int': 340} |
| `chromeRendererPssKb` | {'int': 340} |
| `chromeRenderers` | {'int': 340} |
| `chromeTabs` | {'int': 340} |
| `chromeTabsProbedProfiles` | {'int': 340} |
| `chromeUtilityPssKb` | {'int': 340} |
| `desktopPssKb` | {'int': 340} |
| `hostPssKb` | {'int': 340} |
| `kind` | {'str': 340} |
| `memAvailableKb` | {'int': 340} |
| `memTotalKb` | {'int': 340} |
| `otherPssKb` | {'int': 340} |
| `processes` | {'int': 340} |
| `pssFallbackProcesses` | {'int': 340} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
