# sandbox_telemetry_parse — 2026-11-19 19:50:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1417320 lines=3143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3132 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3132} |
| `chromeGpuPssKb` | {'int': 3132} |
| `chromeOtherPssKb` | {'int': 3132} |
| `chromeProcesses` | {'int': 3132} |
| `chromeProfiles` | {'int': 3132} |
| `chromeRendererMaxPssKb` | {'int': 3132} |
| `chromeRendererPssKb` | {'int': 3132} |
| `chromeRenderers` | {'int': 3132} |
| `chromeTabs` | {'int': 3132} |
| `chromeTabsProbedProfiles` | {'int': 3132} |
| `chromeUtilityPssKb` | {'int': 3132} |
| `desktopPssKb` | {'int': 3132} |
| `hostPssKb` | {'int': 3132} |
| `kind` | {'str': 3132} |
| `memAvailableKb` | {'int': 3132} |
| `memTotalKb` | {'int': 3132} |
| `otherPssKb` | {'int': 3132} |
| `processes` | {'int': 3132} |
| `pssFallbackProcesses` | {'int': 3132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
