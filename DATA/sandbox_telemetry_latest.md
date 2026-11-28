# sandbox_telemetry_parse — 2026-11-28 04:19:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=729506 lines=1619
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1611 |
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
| `chromeBrowserPssKb` | {'int': 1611} |
| `chromeGpuPssKb` | {'int': 1611} |
| `chromeOtherPssKb` | {'int': 1611} |
| `chromeProcesses` | {'int': 1611} |
| `chromeProfiles` | {'int': 1611} |
| `chromeRendererMaxPssKb` | {'int': 1611} |
| `chromeRendererPssKb` | {'int': 1611} |
| `chromeRenderers` | {'int': 1611} |
| `chromeTabs` | {'int': 1611} |
| `chromeTabsProbedProfiles` | {'int': 1611} |
| `chromeUtilityPssKb` | {'int': 1611} |
| `desktopPssKb` | {'int': 1611} |
| `hostPssKb` | {'int': 1611} |
| `kind` | {'str': 1611} |
| `memAvailableKb` | {'int': 1611} |
| `memTotalKb` | {'int': 1611} |
| `otherPssKb` | {'int': 1611} |
| `processes` | {'int': 1611} |
| `pssFallbackProcesses` | {'int': 1611} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
