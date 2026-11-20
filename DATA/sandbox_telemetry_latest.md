# sandbox_telemetry_parse — 2026-11-20 01:52:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1528118 lines=3388
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3377 |
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
| `chromeBrowserPssKb` | {'int': 3377} |
| `chromeGpuPssKb` | {'int': 3377} |
| `chromeOtherPssKb` | {'int': 3377} |
| `chromeProcesses` | {'int': 3377} |
| `chromeProfiles` | {'int': 3377} |
| `chromeRendererMaxPssKb` | {'int': 3377} |
| `chromeRendererPssKb` | {'int': 3377} |
| `chromeRenderers` | {'int': 3377} |
| `chromeTabs` | {'int': 3377} |
| `chromeTabsProbedProfiles` | {'int': 3377} |
| `chromeUtilityPssKb` | {'int': 3377} |
| `desktopPssKb` | {'int': 3377} |
| `hostPssKb` | {'int': 3377} |
| `kind` | {'str': 3377} |
| `memAvailableKb` | {'int': 3377} |
| `memTotalKb` | {'int': 3377} |
| `otherPssKb` | {'int': 3377} |
| `processes` | {'int': 3377} |
| `pssFallbackProcesses` | {'int': 3377} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
