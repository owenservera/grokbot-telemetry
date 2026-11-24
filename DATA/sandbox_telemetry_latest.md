# sandbox_telemetry_parse — 2026-11-24 05:50:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2156284 lines=4780
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4765 |
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
| `chromeBrowserPssKb` | {'int': 4765} |
| `chromeGpuPssKb` | {'int': 4765} |
| `chromeOtherPssKb` | {'int': 4765} |
| `chromeProcesses` | {'int': 4765} |
| `chromeProfiles` | {'int': 4765} |
| `chromeRendererMaxPssKb` | {'int': 4765} |
| `chromeRendererPssKb` | {'int': 4765} |
| `chromeRenderers` | {'int': 4765} |
| `chromeTabs` | {'int': 4765} |
| `chromeTabsProbedProfiles` | {'int': 4765} |
| `chromeUtilityPssKb` | {'int': 4765} |
| `desktopPssKb` | {'int': 4765} |
| `hostPssKb` | {'int': 4765} |
| `kind` | {'str': 4765} |
| `memAvailableKb` | {'int': 4765} |
| `memTotalKb` | {'int': 4765} |
| `otherPssKb` | {'int': 4765} |
| `processes` | {'int': 4765} |
| `pssFallbackProcesses` | {'int': 4765} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
