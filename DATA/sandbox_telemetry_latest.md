# sandbox_telemetry_parse — 2026-11-27 11:52:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=400932 lines=893
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 885 |
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
| `chromeBrowserPssKb` | {'int': 885} |
| `chromeGpuPssKb` | {'int': 885} |
| `chromeOtherPssKb` | {'int': 885} |
| `chromeProcesses` | {'int': 885} |
| `chromeProfiles` | {'int': 885} |
| `chromeRendererMaxPssKb` | {'int': 885} |
| `chromeRendererPssKb` | {'int': 885} |
| `chromeRenderers` | {'int': 885} |
| `chromeTabs` | {'int': 885} |
| `chromeTabsProbedProfiles` | {'int': 885} |
| `chromeUtilityPssKb` | {'int': 885} |
| `desktopPssKb` | {'int': 885} |
| `hostPssKb` | {'int': 885} |
| `kind` | {'str': 885} |
| `memAvailableKb` | {'int': 885} |
| `memTotalKb` | {'int': 885} |
| `otherPssKb` | {'int': 885} |
| `processes` | {'int': 885} |
| `pssFallbackProcesses` | {'int': 885} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
