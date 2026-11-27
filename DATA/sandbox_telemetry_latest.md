# sandbox_telemetry_parse — 2026-11-27 05:27:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=258445 lines=578
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 570 |
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
| `chromeBrowserPssKb` | {'int': 570} |
| `chromeGpuPssKb` | {'int': 570} |
| `chromeOtherPssKb` | {'int': 570} |
| `chromeProcesses` | {'int': 570} |
| `chromeProfiles` | {'int': 570} |
| `chromeRendererMaxPssKb` | {'int': 570} |
| `chromeRendererPssKb` | {'int': 570} |
| `chromeRenderers` | {'int': 570} |
| `chromeTabs` | {'int': 570} |
| `chromeTabsProbedProfiles` | {'int': 570} |
| `chromeUtilityPssKb` | {'int': 570} |
| `desktopPssKb` | {'int': 570} |
| `hostPssKb` | {'int': 570} |
| `kind` | {'str': 570} |
| `memAvailableKb` | {'int': 570} |
| `memTotalKb` | {'int': 570} |
| `otherPssKb` | {'int': 570} |
| `processes` | {'int': 570} |
| `pssFallbackProcesses` | {'int': 570} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
