# sandbox_telemetry_parse — 2026-11-11 10:23:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1582408 lines=3505
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3496 |
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
| `chromeBrowserPssKb` | {'int': 3496} |
| `chromeGpuPssKb` | {'int': 3496} |
| `chromeOtherPssKb` | {'int': 3496} |
| `chromeProcesses` | {'int': 3496} |
| `chromeProfiles` | {'int': 3496} |
| `chromeRendererMaxPssKb` | {'int': 3496} |
| `chromeRendererPssKb` | {'int': 3496} |
| `chromeRenderers` | {'int': 3496} |
| `chromeTabs` | {'int': 3496} |
| `chromeTabsProbedProfiles` | {'int': 3496} |
| `chromeUtilityPssKb` | {'int': 3496} |
| `desktopPssKb` | {'int': 3496} |
| `hostPssKb` | {'int': 3496} |
| `kind` | {'str': 3496} |
| `memAvailableKb` | {'int': 3496} |
| `memTotalKb` | {'int': 3496} |
| `otherPssKb` | {'int': 3496} |
| `processes` | {'int': 3496} |
| `pssFallbackProcesses` | {'int': 3496} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
