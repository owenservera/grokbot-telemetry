# sandbox_telemetry_parse — 2026-11-10 14:35:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1182446 lines=2621
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2612 |
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
| `chromeBrowserPssKb` | {'int': 2612} |
| `chromeGpuPssKb` | {'int': 2612} |
| `chromeOtherPssKb` | {'int': 2612} |
| `chromeProcesses` | {'int': 2612} |
| `chromeProfiles` | {'int': 2612} |
| `chromeRendererMaxPssKb` | {'int': 2612} |
| `chromeRendererPssKb` | {'int': 2612} |
| `chromeRenderers` | {'int': 2612} |
| `chromeTabs` | {'int': 2612} |
| `chromeTabsProbedProfiles` | {'int': 2612} |
| `chromeUtilityPssKb` | {'int': 2612} |
| `desktopPssKb` | {'int': 2612} |
| `hostPssKb` | {'int': 2612} |
| `kind` | {'str': 2612} |
| `memAvailableKb` | {'int': 2612} |
| `memTotalKb` | {'int': 2612} |
| `otherPssKb` | {'int': 2612} |
| `processes` | {'int': 2612} |
| `pssFallbackProcesses` | {'int': 2612} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
